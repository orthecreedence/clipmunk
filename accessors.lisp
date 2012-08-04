(in-package :clipmunk.accessors)

(defmacro make-accessors (c-struct)
  `(progn
     ,@(loop for slot-name in (foreign-slot-names c-struct)
	  for accessor-name = (intern (concatenate 'string (symbol-name c-struct)
						   "-"
						   (symbol-name slot-name)))
	  append (list `(defmacro ,accessor-name (ptr)
			  (list 'foreign-slot-value ptr '',c-struct '',slot-name))
		       `(export ',accessor-name)))))

(make-accessors clipmunk:vect)
(make-accessors clipmunk:bb)
(make-accessors clipmunk:array)
(make-accessors clipmunk:hash-set-bin)
(make-accessors clipmunk:hash-set)
(make-accessors clipmunk:handle)
(make-accessors clipmunk:space-hash-bin)
(make-accessors clipmunk:space-hash)
(make-accessors clipmunk:component-node)
(make-accessors clipmunk:body)
(make-accessors clipmunk:segment-query-info)
(make-accessors clipmunk:shape-class)
(make-accessors clipmunk:shape)
(make-accessors clipmunk:circle-shape)
(make-accessors clipmunk:segment-shape)
(make-accessors clipmunk:poly-shape-axis)
(make-accessors clipmunk:poly-shape)
(make-accessors clipmunk:contact)
(make-accessors clipmunk:arbiter)
(make-accessors clipmunk:constraint-class)
(make-accessors clipmunk:constraint)
(make-accessors clipmunk:collision-handler)
(make-accessors clipmunk:contact-buffer-header)
(make-accessors clipmunk:space)
