(in-package :clipmunk)

(defmacro defanonenum (&body enums)
  "Converts anonymous enums to defconstants."
  `(progn ,@(loop for value in enums
                        for index = 0 then (1+ index)
                        when (listp value) do (setf index (second value)
                                                          value (first value))
                        collect `(defconstant ,value ,index))))

(defun chipmunk-lispify (name flag &optional (package *package*))
  (labels ((helper (lst last rest &aux (c (car lst)))
             (cond
               ((null lst)
                rest)
               ((upper-case-p c)
                (helper (cdr lst) 'upper
                        (case last
                          ((lower digit) (list* c #\- rest))
                          (t (cons c rest)))))
               ((lower-case-p c)
                (helper (cdr lst) 'lower (cons (char-upcase c) rest)))
               ((digit-char-p c)
                (helper (cdr lst) 'digit 
                        (case last
                          ((upper lower) (list* c #\- rest))
                          (t (cons c rest)))))
               ((char-equal c #\_)
                (helper (cdr lst) '_ (cons #\- rest)))
               (t
                (error "Invalid character: ~A" c))))
           (strip-prefix (prf str)
             (let ((l (length prf)))
               (if (and (> (length str) l) (string= prf (subseq str 0 l)))
                 (subseq str l)
                 str))))
    (let ((fix (case flag
                 ((constant enumvalue) "+")
                 (variable "*")
                 (t ""))))
      (intern (concatenate 'string fix (nreverse (helper (concatenate 'list (strip-prefix "cp" name)) nil nil)) fix)
        package))))

(defun convert-sym (sym)
  (let* ((str (string-upcase (write-to-string sym)))
         (search (search ":" str :from-end t)))
    (cond ((null search)
           (intern str))
          ((zerop search)
           sym)
          (search
           (intern (subseq str (1+ search))))
          (t
           (intern str)))))

(defmacro cffi-type (type)
  (if (asdf:version-satisfies (asdf:find-system :cffi) "0.11.0")
      `(list :struct ,type)
      type))

;; TODO: remove?? is this even used?
(defun get-cffi-type (val)
  (if (keywordp val)
       val
       val))
       ;(read-from-string (format nil "'~s" val))))

