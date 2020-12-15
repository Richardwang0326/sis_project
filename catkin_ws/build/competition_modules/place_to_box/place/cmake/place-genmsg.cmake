# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "place: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(place_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv" NAME_WE)
add_custom_target(_place_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "place" "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(place
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/place
)

### Generating Module File
_generate_module_cpp(place
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/place
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(place_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(place_generate_messages place_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv" NAME_WE)
add_dependencies(place_generate_messages_cpp _place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(place_gencpp)
add_dependencies(place_gencpp place_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS place_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(place
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/place
)

### Generating Module File
_generate_module_eus(place
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/place
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(place_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(place_generate_messages place_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv" NAME_WE)
add_dependencies(place_generate_messages_eus _place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(place_geneus)
add_dependencies(place_geneus place_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS place_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(place
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/place
)

### Generating Module File
_generate_module_lisp(place
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/place
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(place_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(place_generate_messages place_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv" NAME_WE)
add_dependencies(place_generate_messages_lisp _place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(place_genlisp)
add_dependencies(place_genlisp place_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS place_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(place
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/place
)

### Generating Module File
_generate_module_nodejs(place
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/place
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(place_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(place_generate_messages place_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv" NAME_WE)
add_dependencies(place_generate_messages_nodejs _place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(place_gennodejs)
add_dependencies(place_gennodejs place_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS place_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(place
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/place
)

### Generating Module File
_generate_module_py(place
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/place
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(place_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(place_generate_messages place_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/place_to_box/place/srv/place_data.srv" NAME_WE)
add_dependencies(place_generate_messages_py _place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(place_genpy)
add_dependencies(place_genpy place_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS place_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/place
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(place_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(place_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/place
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(place_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(place_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/place
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(place_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(place_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/place
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(place_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(place_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/place)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/place\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/place
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(place_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(place_generate_messages_py geometry_msgs_generate_messages_py)
endif()
