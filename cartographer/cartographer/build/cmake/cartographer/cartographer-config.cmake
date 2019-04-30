# Copyright 2016 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#  Usage from an external project:
#    In your CMakeLists.txt, add these lines:
#
#    find_package(Cartographer REQUIRED )
#    include_directories(${CARTOGRAPHER_INCLUDE_DIRS})
#    target_link_libraries(MY_TARGET_NAME ${CARTOGRAPHER_LIBRARIES})
#
#
#    This file will define the following variables:
#      - CARTOGRAPHER_LIBRARIES
#      - CARTOGRAPHER_LIBRARY_DIRS
#      - CARTOGRAPHER_INCLUDE_DIRS


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was cartographer-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set(CARTOGRAPHER_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include;/usr/include/lua5.2;${PACKAGE_PREFIX_DIR}/include;/usr/include/eigen3;/usr/include;/usr/include")
set(CARTOGRAPHER_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib;")

set(CARTOGRAPHER_LIBRARIES
  "cartographer;ceres;/usr/lib/aarch64-linux-gnu/libboost_system.so;/usr/lib/aarch64-linux-gnu/libboost_iostreams.so;/usr/lib/aarch64-linux-gnu/libboost_regex.so;/usr/lib/aarch64-linux-gnu/liblua5.2.so;/usr/lib/aarch64-linux-gnu/libm.so;optimized;/usr/lib/aarch64-linux-gnu/libprotobuf.so;debug;/usr/lib/aarch64-linux-gnu/libprotobuf.so;-lpthread;webp"
)

set(CERES_DIR_HINTS /usr/local/share/Ceres)

if (cartographer_FIND_QUIETLY)
   find_package(Ceres QUIET HINTS ${CERES_DIR_HINTS})
elseif (cartographer_FIND_REQUIRED)
   find_package(Ceres REQUIRED HINTS ${CERES_DIR_HINTS})
else ()
   find_package(Ceres HINTS ${CERES_DIR_HINTS})
endif()
