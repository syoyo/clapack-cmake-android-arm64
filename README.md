# clapack cmake build for Android

Build clapack for based on clapack-cmake and ndk-build of lapack https://github.com/simonlynen/android_libs/tree/master/lapack

## Status

* [x] Compiles
* [ ] Runs on Android correctly
  * [ ] Run tests

## Platform

* Android arm64
* NDK r20 or later(clang compiler)

## How to compile

Edit NDK path in `scripts/bootstrap-android-cmake.sh`, then

```
$ ./scripts/bootstrap-cmake-anroid.sh
$ cd build-android
$ cmake
```

## Link with OpenBLAS

T.B.W.

## References

Compile Kaldi for 64-bit Android on Ubuntu 18
https://medium.com/swlh/compile-kaldi-for-64-bit-android-on-ubuntu-18-70967eb3a308

## Licenses

android cmake patch: MIT license.

clapack 3.2.1-cmake: netlib license. https://www.netlib.org/clapack/

## TODO

* [ ] Build tests and run tests on Android device.
