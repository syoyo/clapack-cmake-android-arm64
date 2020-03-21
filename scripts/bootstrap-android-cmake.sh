## Please edit android sdk/ndk/cmake path
ANDROID_SDK_ROOT=$HOME/Android/Sdk/
ANDROID_NDK_ROOT=$HOME/Android/Sdk/ndk-bundle
#ANDROID_NDK_ROOT=$HOME/Android/Sdk/ndk/android-ndk-r21/
# CMake 3.10 or later required
CMAKE_BIN=$ANDROID_SDK_ROOT/cmake/3.10.2.4988404/bin/cmake
#CMAKE_BIN=cmake

rm -rf build-android

# For ninja build
# -DCMAKE_MAKE_PROGRAM=$ANDROID_SDK_ROOT/cmake/3.6.4111459/bin/ninja \

mkdir build-android
cd build-android && $CMAKE_BIN \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=arm64-v8a \
  -DANDROID_NATIVE_API_LEVEL=28 \
  -DANDROID_STL=c++_shared \
  -DCLAPACK_ANDROID_BUILD_TESTS=Off \
  ..
