# Install script for directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/ceres_scan_matcher.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/correlative_scan_matcher.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/fast_correlative_scan_matcher.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/fast_global_localizer.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/occupied_space_cost_functor.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/real_time_correlative_scan_matcher.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/rotation_delta_cost_functor.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_2d/scan_matching" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d/scan_matching/translation_delta_cost_functor.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_2d/scan_matching/proto/cmake_install.cmake")

endif()

