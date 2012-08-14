#!/bin/sh

#
# This script can be used to regenerate the bindings.lisp file using
# SWIG. Should not be necessary to do that, though, unless there's a
# new version out.
#

swig -cffi -module bindings -noswig-lisp -o bindings.lisp scripts/bindings.i 

sed -i -e "s/(\(\w*\) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 
sed -i -e "s/(#.(chipmunk-lispify \"\(\w*\)\" 'slotname) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 

sed -i 's|cffi:defcfun|clipmunk-defcfun|i' bindings.lisp
sed -i 's|cffi:defcstruct|clipmunk-defcstruct|i' bindings.lisp
sed -i 's|cffi-replace:|cffi:|i' bindings.lisp

# ------------------------------------------------------------------------------
# Auto-generate exports.lisp
# ------------------------------------------------------------------------------
echo -en "(in-package :clipmunk)\n\n" > exports.lisp

# create (import ...) directives for the enum values. since these would normally
# be replaced by the (export ...) regexes, we have to rename chipmunk-lispify to
# import-chipmunk-lispify then rename it after export is finished.
cat bindings.lisp | \
	grep "enumvalue :keyword" >> exports.lisp
sed -i "s|(\(chipmunk-lispify \"[^\"]\+\"\s\+'[a-z]\+\s*\(:[a-z]\+\)\?)\).*|NO_GREEDY_HACK(import (import-\1)|i" exports.lisp
sed -i "s|.*NO_GREEDY_HACK||" exports.lisp
echo -en "\n" >> exports.lisp

# create (export ...) directives
cat bindings.lisp extra-bindings.lisp | \
	grep 'chipmunk-lispify' | \
	grep -v 'slotname' | \
	grep -v -e '^ .*classname' >> exports.lisp
sed -i "s|\((chipmunk-lispify \"[^\"]\+\"\s\+'[a-z]\+\s*\(:[a-z]\+\)\?)\).*|NO_GREEDY_HACK(export \1)|i" exports.lisp
sed -i "s|.*NO_GREEDY_HACK||" exports.lisp


# aaaand finish the import directives off
sed -i "s|import-chipmunk-lispify|chipmunk-lispify|" exports.lisp

# ------------------------------------------------------------------------------
# Auto-generate ffi.lisp
# ------------------------------------------------------------------------------
cat <<-EOFMAC > ffi.lisp
(in-package :clipmunk.ffi)

(defmacro def-ffi (fn-name)
  (multiple-value-bind (fn-meta existsp) (gethash fn-name clipmunk::*function-registry*)
    (when (and fn-meta existsp)
      (let ((args (loop for arg in (getf fn-meta :args)
                        collect (list (clipmunk::convert-sym (car arg))
                                      (cadr arg))))
            (varname (clipmunk::chipmunk-lispify fn-name 'variable))
            (fn-def (clipmunk::chipmunk-lispify fn-name 'function)))
        \`(progn
           (defparameter ,varname
                         (cffi:mem-aref (cffi:foreign-symbol-pointer ,(format nil "_~a" fn-name)) :pointer))
           (defun ,fn-def ,(loop for arg in args collect (car arg))
             (cffi:foreign-funcall-pointer ,varname () ,@(loop for arg in args append (list (cadr arg) (car arg))) ,(getf fn-meta :return)))
           (export ,(read-from-string (format nil "'~s" fn-def)) :clipmunk.ffi))))))

(eval-when (:compile-toplevel :load-toplevel)
  (defun get-class-slot-type (class slot)
    (multiple-value-bind (slots existsp) (gethash class clipmunk::*class-registry*)
      (if existsp
          (let* ((slot-sym (clipmunk::convert-sym slot))
                 (slot (find-if (lambda (slot)
                                  (eq (car slot) slot-sym)) slots))
                 (type (cadr slot)))
            (if type
                type
                :void))
          :void))))

(defmacro def-ffi-prop (obj prop)
  (let* ((fn-get-str (format nil "~aGet~a" obj prop))
         (fn-set-str (format nil "~aSet~a" obj prop))
         (varname-get (clipmunk::chipmunk-lispify fn-get-str 'variable))
         (varname-set (clipmunk::chipmunk-lispify fn-set-str 'variable))
         (obj-class (clipmunk::chipmunk-lispify obj 'classname))
         (prop-name (clipmunk::chipmunk-lispify prop 'slotname))
         (fn-get-name (clipmunk::chipmunk-lispify fn-get-str 'function))
         (fn-set-name (clipmunk::chipmunk-lispify fn-set-str 'function)))
    \`(progn
       (defparameter ,varname-get
                     (cffi:mem-aref (cffi:foreign-symbol-pointer ,(format nil "_~a" fn-get-str)) :pointer))
       (defparameter ,varname-set
                     (cffi:mem-aref (cffi:foreign-symbol-pointer ,(format nil "_~a" fn-set-str)) :pointer))
       (defun ,fn-get-name ,(list obj-class)
         (cffi:foreign-funcall-pointer ,varname-get () :pointer ,obj-class ,(clipmunk.ffi::get-class-slot-type obj-class prop-name)))
       (defun ,fn-set-name ,(list obj-class)
         (cffi:foreign-funcall-pointer ,varname-set () :pointer ,obj-class ,(clipmunk.ffi::get-class-slot-type obj-class prop-name)))
       (export ,(read-from-string (format nil "'~s" fn-get-name)) :clipmunk.ffi)
       (export ,(read-from-string (format nil "'~s" fn-set-name)) :clipmunk.ffi))))

;; need to add this manually since it's not in bindings.lisp (no public fn)
(defparameter *body-is-sleeping* (cffi:mem-aref (cffi:foreign-symbol-pointer "_cpBodyIsSleeping") :pointer))
(defun body-is-sleeping (body)
  (cffi:foreign-funcall-pointer *body-is-sleeping* () :pointer body :int))
(export 'body-is-sleeping :clipmunk.ffi)

EOFMAC
FFI=/usr/local/include/chipmunk/chipmunk_ffi.h
if [ -f $FFI ]; then
	cat $FFI | \
		grep -e '^MAKE_REF' | \
		sed 's|.*(\([^)]\+\)).*|(def-ffi "\1")|i' >> ffi.lisp
	cat $FFI | \
		grep -e '^MAKE_PROPERTIES_REF' | \
		sed 's|.*(\([^,]\+\),\s*\([^)]\+\)).*|(def-ffi-prop "\1" "\2")|i' >> ffi.lisp
fi
echo "Done!"
