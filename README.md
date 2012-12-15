CLIPMUNK
========
This is a fork of the [Clipmunk github project from fred-o](https://github.com/fred-o/clipmunk).
I decided to fork to support the newer versions of the Chipmunk library (current bindings are
generated for version 6.1.1).

Usage
-----
This fork is not in quicklisp (as far as I know) so download it to your asdf folder before trying
to use it. Once loaded, it follows the following conventions:

 - Prefix is ommitted (`cpSpaceNew` becomes `SpaceNew`)
 - Words are split by dashes: `SpaceNew` becomes `space-new`
 - Package is nicknamed "cp", so `cpSpaceNew` is `cp:space-new`

So `cpCircleShapeNew` becomes in its final form `cp:circle-shape-new`.

You can access just about any of the functions in the Chipmunk library via this scheme.

### cpVect
Many of the places in the code take a `cpVect` passed by value as an argument. CFFI doesn't *like*
objects being passed by value, so the workaround is that whenever this happens in the bindings,
instead of

    (cp:segment-shape-new body-ptr vect1 vect2 radius)

you do

    (cp:segment-shape-new body-ptr vect1-x vect1-y vect2-x vect2-y radius)

...works well, and C sees the two as nearly identical, at least on x86 systems.

### Accessors
Accessors are done in a different package, but separated in much the same way:

 - `space->static_body` becomes `(cp-a:space-static-body space)`

Accessors are setfable.

FFI
---
Chipmunk provides a header file (when compiled with `-DCHIPMUNK_FFI`) that defines a set of pointer
functions to accessors. Please see [chipmunk_ffi.h](https://github.com/slembcke/Chipmunk-Physics/blob/master/include/chipmunk/chipmunk_ffi.h)
for the full listing:

    _cpBodyIsSleeping    // a global variable holding a pointer to the function cpBodyIsSleeping

Access directly with:

    (cffi:foreign-funcall-pointer (cffi:mem-aref (cffi:foreign-symbol-pointer "_cpBodyIsSleeping") :pointer) () :pointer body-ptr :int)

These functions are not *currently* supported by the bindings, but their addition is planned under
another package in the near future. Their inclusion makes accessing some of the chipmunk funcionality
a bit easier, and although they are not necessary, may be nice to have.

Notes
-----
Please note that, as mentioned, I am *not* the original author of these bindings. I have made many
modifications to keep the bindings (*and* their generation script) in sync with the latest Chipmunk,
but the bulk of the work still goes to [fred-o](https://github.com/fred-o). Thanks!
