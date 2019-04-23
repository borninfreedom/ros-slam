# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosserial_msgs: 2 messages, 3 services")

set(MSG_I_FLAGS "-Irosserial_msgs:/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosserial_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg" NAME_WE)
add_custom_target(_rosserial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosserial_msgs" "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg" ""
)

get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv" NAME_WE)
add_custom_target(_rosserial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosserial_msgs" "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv" ""
)

get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv" NAME_WE)
add_custom_target(_rosserial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosserial_msgs" "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv" ""
)

get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv" NAME_WE)
add_custom_target(_rosserial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosserial_msgs" "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv" ""
)

get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg" NAME_WE)
add_custom_target(_rosserial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosserial_msgs" "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs
)
_generate_msg_cpp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs
)

### Generating Services
_generate_srv_cpp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_cpp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_cpp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs
)

### Generating Module File
_generate_module_cpp(rosserial_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosserial_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosserial_msgs_generate_messages rosserial_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_cpp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_cpp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_cpp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_cpp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_cpp _rosserial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosserial_msgs_gencpp)
add_dependencies(rosserial_msgs_gencpp rosserial_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosserial_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs
)
_generate_msg_eus(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs
)

### Generating Services
_generate_srv_eus(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_eus(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_eus(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs
)

### Generating Module File
_generate_module_eus(rosserial_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosserial_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosserial_msgs_generate_messages rosserial_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_eus _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_eus _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_eus _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_eus _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_eus _rosserial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosserial_msgs_geneus)
add_dependencies(rosserial_msgs_geneus rosserial_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosserial_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs
)
_generate_msg_lisp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs
)

### Generating Services
_generate_srv_lisp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_lisp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_lisp(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs
)

### Generating Module File
_generate_module_lisp(rosserial_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosserial_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosserial_msgs_generate_messages rosserial_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_lisp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_lisp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_lisp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_lisp _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_lisp _rosserial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosserial_msgs_genlisp)
add_dependencies(rosserial_msgs_genlisp rosserial_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosserial_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs
)
_generate_msg_nodejs(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs
)

### Generating Services
_generate_srv_nodejs(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_nodejs(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_nodejs(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs
)

### Generating Module File
_generate_module_nodejs(rosserial_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosserial_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosserial_msgs_generate_messages rosserial_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_nodejs _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_nodejs _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_nodejs _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_nodejs _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_nodejs _rosserial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosserial_msgs_gennodejs)
add_dependencies(rosserial_msgs_gennodejs rosserial_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosserial_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs
)
_generate_msg_py(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs
)

### Generating Services
_generate_srv_py(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_py(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs
)
_generate_srv_py(rosserial_msgs
  "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs
)

### Generating Module File
_generate_module_py(rosserial_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosserial_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosserial_msgs_generate_messages rosserial_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/TopicInfo.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_py _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestServiceInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_py _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestMessageInfo.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_py _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/srv/RequestParam.srv" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_py _rosserial_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/git/repos/ros/catkin_ws/src/rosserial/rosserial_msgs/msg/Log.msg" NAME_WE)
add_dependencies(rosserial_msgs_generate_messages_py _rosserial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosserial_msgs_genpy)
add_dependencies(rosserial_msgs_genpy rosserial_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosserial_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosserial_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosserial_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosserial_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosserial_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosserial_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
