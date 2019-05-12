# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(base_local_planner_CONFIG_INCLUDED)
  return()
endif()
set(base_local_planner_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(base_local_planner_SOURCE_PREFIX /home/nvidia/git/repos/ros/catkin_ws/src/navigation/base_local_planner)
  set(base_local_planner_DEVEL_PREFIX /home/nvidia/git/repos/ros/catkin_ws/devel)
  set(base_local_planner_INSTALL_PREFIX "")
  set(base_local_planner_PREFIX ${base_local_planner_DEVEL_PREFIX})
else()
  set(base_local_planner_SOURCE_PREFIX "")
  set(base_local_planner_DEVEL_PREFIX "")
  set(base_local_planner_INSTALL_PREFIX /home/nvidia/git/repos/ros/catkin_ws/install)
  set(base_local_planner_PREFIX ${base_local_planner_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'base_local_planner' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(base_local_planner_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/nvidia/git/repos/ros/catkin_ws/devel/include;/home/nvidia/git/repos/ros/catkin_ws/src/navigation/base_local_planner/include " STREQUAL " ")
  set(base_local_planner_INCLUDE_DIRS "")
  set(_include_dirs "/home/nvidia/git/repos/ros/catkin_ws/devel/include;/home/nvidia/git/repos/ros/catkin_ws/src/navigation/base_local_planner/include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://wiki.ros.org/base_local_planner " STREQUAL " ")
    set(_report "Check the website 'http://wiki.ros.org/base_local_planner' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'David V. Lu!! <davidvlu@gmail.com>, Michael Ferguson <mfergs7@gmail.com>, Aaron Hoy <ahoy@fetchrobotics.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${base_local_planner_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'base_local_planner' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'base_local_planner' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/nvidia/git/repos/ros/catkin_ws/src/navigation/base_local_planner/${idir}'.  ${_report}")
    endif()
    _list_append_unique(base_local_planner_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "base_local_planner;trajectory_planner_ros")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND base_local_planner_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND base_local_planner_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND base_local_planner_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/nvidia/git/repos/ros/catkin_ws/devel/lib;/home/nvidia/git/repos/ros/cartographer_ws/install_isolated/lib;/home/nvidia/git/repos/ros/catkin_ws/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(base_local_planner_LIBRARY_DIRS ${lib_path})
      list(APPEND base_local_planner_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'base_local_planner'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND base_local_planner_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(base_local_planner_EXPORTED_TARGETS "base_local_planner_generate_messages_cpp;base_local_planner_generate_messages_eus;base_local_planner_generate_messages_lisp;base_local_planner_generate_messages_nodejs;base_local_planner_generate_messages_py;base_local_planner_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${base_local_planner_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "angles;costmap_2d;dynamic_reconfigure;geometry_msgs;message_runtime;nav_core;nav_msgs;pluginlib;roscpp;std_msgs;tf")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 base_local_planner_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${base_local_planner_dep}_FOUND)
      find_package(${base_local_planner_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${base_local_planner_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(base_local_planner_INCLUDE_DIRS ${${base_local_planner_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(base_local_planner_LIBRARIES ${base_local_planner_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${base_local_planner_dep}_LIBRARIES})
  _list_append_deduplicate(base_local_planner_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(base_local_planner_LIBRARIES ${base_local_planner_LIBRARIES})

  _list_append_unique(base_local_planner_LIBRARY_DIRS ${${base_local_planner_dep}_LIBRARY_DIRS})
  list(APPEND base_local_planner_EXPORTED_TARGETS ${${base_local_planner_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "base_local_planner-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${base_local_planner_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
