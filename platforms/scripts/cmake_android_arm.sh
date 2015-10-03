#!/bin/sh
cd `dirname $0`/..

mkdir -p build_android_arm
cd build_android_arm

cmake -DPYTHON2_LIBRARIES=/home/kivy/python-for-android-armeabi-v7a/build/python/Python-2.7.2 -DPYTHON2_EXECUTABLE=/usr/bin/python -DPYTHON2_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON2_NUMPY_INCLUDE_DIRS=/usr/lib/python2.7/dist-packages/numpy/core/include/ -DANDROID_ABI="armeabi-v7a with NEON" -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON -DENABLE_NEON=ON -DENABLE_VFPV3=ON -DCMAKE_TOOLCHAIN_FILE=../android/android.toolchain.cmake $@ ../..
