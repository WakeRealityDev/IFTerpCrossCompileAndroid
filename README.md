# IFTerpCrossCompileAndroid
Interactive Fiction Interpreter Cross Compile Androd

Typical Steps
================
Tested on Ubuntu 17.04 x86 system, latest Google Android NDK from Android Studio as of 2017-08-07.

```bash
$ chmod +x checkout_terps_and_glk.sh
$ ./checkout_terps_and_glk.sh
$ cd src/main/jni
$ ndk-build
```

From here, to test on Android 7.1.1 emulator, x86, add these steps:

```bash
$ cd ../obj/local
$ adb push x86/glulxe /data/local/tmp
$ adb shell
  Now on Android shell:
  $ cd /data/local/tmp
  $ chmod +x glulxe
  $ ./glulxe
```

At this point you should be able to send JSON to stdin to interface with the RemGlk that is on top of Glulxe interpreter.

