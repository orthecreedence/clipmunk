%module bindings

%feature("intern_function", "chipmunk-lispify");

%insert("lisphead") %{
(in-package :clipmunk-ffi)
%}

%include "/usr/local/include/chipmunk/chipmunk_ffi.h"
