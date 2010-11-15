(in-package :cl-chipmunk.accessors)

(defmacro make-accessors (c-struct)
  `(progn
     ,@(loop for slot-name in (foreign-slot-names c-struct)
	  for accessor-name = (intern (concatenate 'string (symbol-name c-struct)
						   "-"
						   (symbol-name slot-name)))
	  append (list `(defmacro ,accessor-name (ptr)
			  (list 'foreign-slot-value ptr '',c-struct '',slot-name))
		       `(export ',accessor-name)))))

(make-accessors cl-chipmunk.bindings:vect)
(make-accessors cl-chipmunk.bindings:bb)
(make-accessors cl-chipmunk.bindings:array)
(make-accessors cl-chipmunk.bindings:hash-set-bin)
(make-accessors cl-chipmunk.bindings:hash-set)
(make-accessors cl-chipmunk.bindings:handle)
(make-accessors cl-chipmunk.bindings:space-hash-bin)
(make-accessors cl-chipmunk.bindings:space-hash)
(make-accessors cl-chipmunk.bindings:component-node)
(make-accessors cl-chipmunk.bindings:body)
(make-accessors cl-chipmunk.bindings:segment-query-info)
(make-accessors cl-chipmunk.bindings:shape-class)
(make-accessors cl-chipmunk.bindings:shape)
(make-accessors cl-chipmunk.bindings:circle-shape)
(make-accessors cl-chipmunk.bindings:segment-shape)
(make-accessors cl-chipmunk.bindings:poly-shape-axis)
(make-accessors cl-chipmunk.bindings:poly-shape)
(make-accessors cl-chipmunk.bindings:contact)
(make-accessors cl-chipmunk.bindings:arbiter)
(make-accessors cl-chipmunk.bindings:constraint-class)
(make-accessors cl-chipmunk.bindings:constraint)
(make-accessors cl-chipmunk.bindings:collision-handler)
(make-accessors cl-chipmunk.bindings:contact-buffer-header)
(make-accessors cl-chipmunk.bindings:space)
