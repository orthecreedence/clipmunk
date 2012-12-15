(defpackage #:clipmunk
  (:use :cl :cffi)
  (:nicknames :cp))

(defpackage #:clipmunk.accessors
  (:use :cl :cffi :clipmunk)
  (:nicknames :cp-a))

(defpackage #:clipmunk.ffi
  (:use :cl :cffi)
  (:nicknames :cp-f))

(in-package :clipmunk)

(eval-when (:load-toplevel)
  (define-foreign-library chipmunk
   (:unix (:or "libchipmunk.so.5.1" "libchipmunk.so" "libchipmunk.dylib"))
   (t (:default "chipmunk")))

  (unless (foreign-library-loaded-p 'chipmunk)
    (use-foreign-library chipmunk)))

