# Install script for directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/blocking_queue.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/ceres_solver_options.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/common/config.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/configuration_file_resolver.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/fixed_ratio_sampler.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/histogram.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/lua.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/lua_parameter_dictionary.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/lua_parameter_dictionary_test_helpers.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/make_unique.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/math.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/mutex.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/ordered_multi_queue.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/port.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/rate_timer.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/thread_pool.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/common" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/common/time.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/common/proto/cmake_install.cmake")

endif()

