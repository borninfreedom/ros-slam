# Install script for directory: /home/nvidia/git/repos/ros/cartographer/cartographer_ros/src/cartographer_ros_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartographer_ros_msgs/msg" TYPE FILE FILES
    "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/src/cartographer_ros_msgs/msg/SubmapList.msg"
    "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/src/cartographer_ros_msgs/msg/TrajectorySubmapList.msg"
    "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/src/cartographer_ros_msgs/msg/SubmapEntry.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartographer_ros_msgs/srv" TYPE FILE FILES
    "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/src/cartographer_ros_msgs/srv/SubmapQuery.srv"
    "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/src/cartographer_ros_msgs/srv/FinishTrajectory.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartographer_ros_msgs/cmake" TYPE FILE FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/build/cartographer_ros_msgs/catkin_generated/installspace/cartographer_ros_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/devel/include/cartographer_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/devel/share/roseus/ros/cartographer_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/devel/share/common-lisp/ros/cartographer_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/devel/share/gennodejs/ros/cartographer_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/devel/lib/python2.7/dist-packages/cartographer_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/devel/lib/python2.7/dist-packages/cartographer_ros_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/build/cartographer_ros_msgs/catkin_generated/installspace/cartographer_ros_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartographer_ros_msgs/cmake" TYPE FILE FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/build/cartographer_ros_msgs/catkin_generated/installspace/cartographer_ros_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartographer_ros_msgs/cmake" TYPE FILE FILES
    "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/build/cartographer_ros_msgs/catkin_generated/installspace/cartographer_ros_msgsConfig.cmake"
    "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/build/cartographer_ros_msgs/catkin_generated/installspace/cartographer_ros_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartographer_ros_msgs" TYPE FILE FILES "/home/nvidia/git/repos/ros/cartographer/cartographer_ros/src/cartographer_ros_msgs/package.xml")
endif()

