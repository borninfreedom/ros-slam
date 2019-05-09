#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ceres" for configuration "Release"
set_property(TARGET ceres APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ceres PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "/usr/lib/aarch64-linux-gnu/libglog.so;/usr/lib/aarch64-linux-gnu/libgflags.so;-lpthread;/usr/lib/aarch64-linux-gnu/libspqr.so;/usr/lib/aarch64-linux-gnu/libtbb.so;/usr/lib/aarch64-linux-gnu/libtbbmalloc.so;/usr/lib/aarch64-linux-gnu/libcholmod.so;/usr/lib/aarch64-linux-gnu/libccolamd.so;/usr/lib/aarch64-linux-gnu/libcamd.so;/usr/lib/aarch64-linux-gnu/libcolamd.so;/usr/lib/aarch64-linux-gnu/libamd.so;/usr/lib/liblapack.so;/usr/lib/libf77blas.so;/usr/lib/libatlas.so;/usr/lib/libf77blas.so;/usr/lib/libatlas.so;/usr/lib/aarch64-linux-gnu/libsuitesparseconfig.so;/usr/lib/aarch64-linux-gnu/librt.so;/usr/lib/aarch64-linux-gnu/libcxsparse.so;/usr/lib/liblapack.so;/usr/lib/libf77blas.so;/usr/lib/libatlas.so;/usr/lib/libf77blas.so;/usr/lib/libatlas.so;gomp;-lpthread"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libceres.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ceres )
list(APPEND _IMPORT_CHECK_FILES_FOR_ceres "${_IMPORT_PREFIX}/lib/libceres.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
