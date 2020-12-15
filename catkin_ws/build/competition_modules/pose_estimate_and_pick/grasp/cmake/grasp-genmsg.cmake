# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "grasp: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(grasp_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv" NAME_WE)
add_custom_target(_grasp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "grasp" "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(grasp
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp
)

### Generating Module File
_generate_module_cpp(grasp
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(grasp_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(grasp_generate_messages grasp_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv" NAME_WE)
add_dependencies(grasp_generate_messages_cpp _grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_gencpp)
add_dependencies(grasp_gencpp grasp_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(grasp
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp
)

### Generating Module File
_generate_module_eus(grasp
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(grasp_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(grasp_generate_messages grasp_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv" NAME_WE)
add_dependencies(grasp_generate_messages_eus _grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_geneus)
add_dependencies(grasp_geneus grasp_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(grasp
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp
)

### Generating Module File
_generate_module_lisp(grasp
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(grasp_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(grasp_generate_messages grasp_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv" NAME_WE)
add_dependencies(grasp_generate_messages_lisp _grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_genlisp)
add_dependencies(grasp_genlisp grasp_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(grasp
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp
)

### Generating Module File
_generate_module_nodejs(grasp
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(grasp_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(grasp_generate_messages grasp_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv" NAME_WE)
add_dependencies(grasp_generate_messages_nodejs _grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_gennodejs)
add_dependencies(grasp_gennodejs grasp_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(grasp
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp
)

### Generating Module File
_generate_module_py(grasp
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(grasp_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(grasp_generate_messages grasp_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/pose_estimate_and_pick/grasp/srv/data.srv" NAME_WE)
add_dependencies(grasp_generate_messages_py _grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_genpy)
add_dependencies(grasp_genpy grasp_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(grasp_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(grasp_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(grasp_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(grasp_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(grasp_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(grasp_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(grasp_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(grasp_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(grasp_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(grasp_generate_messages_py geometry_msgs_generate_messages_py)
endif()
