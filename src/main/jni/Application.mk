# with NDK 13, setting this to 4.9 uses the SDK-provided gcc 4.9 instead of clang
NDK_TOOLCHAIN_VERSION := 4.9

# Android 4.0.3 and newer
APP_PLATFORM := android-15

# Google doc page "Warning: Using static runtimes can cause unexpected behavior. See the static runtimes section for more information."
APP_STL := stlport_static

APP_OPTIM := release

