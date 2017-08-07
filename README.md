# IFTerpCrossCompileAndroid
Interactive Fiction Interpreter Cross Compile Androd

Typical Steps
================
Tested on Ubuntu 17.04 x86 system, latest Google Android NDK from Android Studio as of 2017-08-07.

$ chmod +x checkout_terps_and_glk.sh
$ ./checkout_terps_and_glk.sh
$ cd src/main/jni
$ ndk-build

To test on Android 7.11 emulator, x86:

$ cd ../obj/local
$ adb push x86/glulxe /data/local/tmp
$ adb shell
  $ cd /data/local/tmp
  $ chmod +x glulxe
  $ ./glulxe

At this point you should be able to send JSON to stdin to interface with the RemGlk that is on top of Glulxe interpreter.

