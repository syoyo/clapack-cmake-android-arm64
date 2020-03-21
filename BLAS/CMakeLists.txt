add_subdirectory(SRC)

if (CLAPACK_ANDROID_BUILD_TESTS)
  add_subdirectory(TESTING)
endif ()
