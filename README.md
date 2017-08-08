# IFTerpCrossCompileAndroid
Interactive Fiction Interpreter Cross Compile Androd

This project serves to demonstrate a working file structure and makefiles to cross-compile established Interactive Fiction interpreter and Glk library for modern Android NDK [r15c](https://developer.android.com/ndk/downloads/index.html).

It will complie the interpreter Glulxe and library RemGlk into a applicaiton binary that can be run on the android device. It is configured to generate every variation of process arhitecture that the Android NDK supports. It uses the gcc instead of (now recommended by Google) clang compiler given that's gcc the most well-known in terms of known of the various IF virtual machines on both 32bit and 64bit systems.  If you can share and test clang compiler equivlent makefiles, please do, open an Issue on this GitHub project.


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

