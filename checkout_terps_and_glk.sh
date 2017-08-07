#!/bin/bash

#
# Makes assumption that this is virgin run, no previous checkout files.
#

# starting from current path, root of this project.
cd src/main/jni/loadable_engines

pwd

git clone https://github.com/erkyrath/remglk remglk
cp ../makefiles/remglk/Android.mk remglk/

git clone https://github.com/erkyrath/glulxe glulxe
cp ../makefiles/glulxe/Android.mk glulxe/
