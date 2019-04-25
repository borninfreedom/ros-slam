# Install script for directory: /home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_vex_cortex

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/git/repos/ros/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  include("/home/nvidia/git/repos/ros/catkin_ws/build/rosserial/rosserial_vex_cortex/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/build/rosserial/rosserial_vex_cortex/catkin_generated/installspace/rosserial_vex_cortex.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosserial_vex_cortex/cmake" TYPE FILE FILES
    "/home/nvidia/git/repos/ros/catkin_ws/build/rosserial/rosserial_vex_cortex/catkin_generated/installspace/rosserial_vex_cortexConfig.cmake"
    "/home/nvidia/git/repos/ros/catkin_ws/build/rosserial/rosserial_vex_cortex/catkin_generated/installspace/rosserial_vex_cortexConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosserial_vex_cortex" TYPE FILE FILES "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_vex_cortex/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosserial_vex_cortex/src" TYPE DIRECTORY FILES "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_vex_cortex/src/ros_lib")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rosserial_vex_cortex" TYPE PROGRAM FILES "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_vex_cortex/scripts/genproject.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosserial_vex_cortex" TYPE DIRECTORY FILES "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_vex_cortex/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosserial_vex_cortex" TYPE PROGRAM FILES "/home/nvidia/git/repos/ros/catkin_ws/build/rosserial/rosserial_vex_cortex/catkin_generated/installspace/make_libraries.py")
endif()

