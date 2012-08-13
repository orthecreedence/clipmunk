#!/bin/sh

#
# This script can be used to regenerate the bindings.lisp file using
# SWIG. Should not be necessary to do that, though, unless there's a
# new version out.
#

swig -cffi -module bindings -noswig-lisp -o bindings.lisp scripts/bindings.i 

sed -i -e "s/(\(\w*\) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 
sed -i -e "s/(#.(chipmunk-lispify \"\(\w*\)\" 'slotname) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 

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
cat bindings.lisp | \
	grep 'chipmunk-lispify' | \
	grep -v 'slotname' | \
	grep -v -e '^ .*classname' >> exports.lisp
sed -i "s|\((chipmunk-lispify \"[^\"]\+\"\s\+'[a-z]\+\s*\(:[a-z]\+\)\?)\).*|NO_GREEDY_HACK(export \1)|i" exports.lisp
sed -i "s|.*NO_GREEDY_HACK||" exports.lisp


# aaaand finish the import directives off
sed -i "s|import-chipmunk-lispify|chipmunk-lispify|" exports.lisp

echo "Done!"
