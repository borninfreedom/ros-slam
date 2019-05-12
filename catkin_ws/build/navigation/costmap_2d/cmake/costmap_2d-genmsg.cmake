# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "costmap_2d: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icostmap_2d:/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Imap_msgs:/opt/ros/kinetic/share/map_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(costmap_2d_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg" NAME_WE)
add_custom_target(_costmap_2d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "costmap_2d" "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg" "geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(costmap_2d
  "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_2d
)

### Generating Services

### Generating Module File
_generate_module_cpp(costmap_2d
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_2d
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(costmap_2d_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(costmap_2d_generate_messages costmap_2d_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg" NAME_WE)
add_dependencies(costmap_2d_generate_messages_cpp _costmap_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_2d_gencpp)
add_dependencies(costmap_2d_gencpp costmap_2d_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_2d_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(costmap_2d
  "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_2d
)

### Generating Services

### Generating Module File
_generate_module_eus(costmap_2d
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_2d
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(costmap_2d_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(costmap_2d_generate_messages costmap_2d_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg" NAME_WE)
add_dependencies(costmap_2d_generate_messages_eus _costmap_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_2d_geneus)
add_dependencies(costmap_2d_geneus costmap_2d_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_2d_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(costmap_2d
  "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_2d
)

### Generating Services

### Generating Module File
_generate_module_lisp(costmap_2d
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_2d
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(costmap_2d_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(costmap_2d_generate_messages costmap_2d_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg" NAME_WE)
add_dependencies(costmap_2d_generate_messages_lisp _costmap_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_2d_genlisp)
add_dependencies(costmap_2d_genlisp costmap_2d_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_2d_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(costmap_2d
  "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_2d
)

### Generating Services

### Generating Module File
_generate_module_nodejs(costmap_2d
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_2d
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(costmap_2d_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(costmap_2d_generate_messages costmap_2d_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg" NAME_WE)
add_dependencies(costmap_2d_generate_messages_nodejs _costmap_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_2d_gennodejs)
add_dependencies(costmap_2d_gennodejs costmap_2d_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_2d_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(costmap_2d
  "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_2d
)

### Generating Services

### Generating Module File
_generate_module_py(costmap_2d
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_2d
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(costmap_2d_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(costmap_2d_generate_messages costmap_2d_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/navigation/costmap_2d/msg/VoxelGrid.msg" NAME_WE)
add_dependencies(costmap_2d_generate_messages_py _costmap_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_2d_genpy)
add_dependencies(costmap_2d_genpy costmap_2d_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_2d_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_2d
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(costmap_2d_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(costmap_2d_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET map_msgs_generate_messages_cpp)
  add_dependencies(costmap_2d_generate_messages_cpp map_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_2d
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(costmap_2d_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(costmap_2d_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET map_msgs_generate_messages_eus)
  add_dependencies(costmap_2d_generate_messages_eus map_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_2d
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(costmap_2d_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(costmap_2d_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET map_msgs_generate_messages_lisp)
  add_dependencies(costmap_2d_generate_messages_lisp map_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_2d
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(costmap_2d_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(costmap_2d_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET map_msgs_generate_messages_nodejs)
  add_dependencies(costmap_2d_generate_messages_nodejs map_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_2d)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_2d\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_2d
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(costmap_2d_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(costmap_2d_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET map_msgs_generate_messages_py)
  add_dependencies(costmap_2d_generate_messages_py map_msgs_generate_messages_py)
endif()
