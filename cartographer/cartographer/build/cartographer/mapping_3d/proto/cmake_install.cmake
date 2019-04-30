# Install script for directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_3d/proto

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_3d/proto" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_3d/proto/kalman_local_trajectory_builder_options.pb.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_3d/proto" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_3d/proto/laser_fan_inserter_options.pb.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_3d/proto" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_3d/proto/local_trajectory_builder_options.pb.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_3d/proto" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_3d/proto/motion_filter_options.pb.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_3d/proto" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_3d/proto/optimizing_local_trajectory_builder_options.pb.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartographer/mapping_3d/proto" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_3d/proto/submaps_options.pb.h")
endif()

