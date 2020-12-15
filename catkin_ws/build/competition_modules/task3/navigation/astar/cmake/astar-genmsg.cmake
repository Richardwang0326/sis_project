# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "astar: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(astar_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv" NAME_WE)
add_custom_target(_astar_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astar" "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(astar
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar
)

### Generating Module File
_generate_module_cpp(astar
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(astar_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(astar_generate_messages astar_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv" NAME_WE)
add_dependencies(astar_generate_messages_cpp _astar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_gencpp)
add_dependencies(astar_gencpp astar_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(astar
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar
)

### Generating Module File
_generate_module_eus(astar
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(astar_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(astar_generate_messages astar_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv" NAME_WE)
add_dependencies(astar_generate_messages_eus _astar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_geneus)
add_dependencies(astar_geneus astar_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(astar
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar
)

### Generating Module File
_generate_module_lisp(astar
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(astar_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(astar_generate_messages astar_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv" NAME_WE)
add_dependencies(astar_generate_messages_lisp _astar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_genlisp)
add_dependencies(astar_genlisp astar_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(astar
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar
)

### Generating Module File
_generate_module_nodejs(astar
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(astar_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(astar_generate_messages astar_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv" NAME_WE)
add_dependencies(astar_generate_messages_nodejs _astar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_gennodejs)
add_dependencies(astar_gennodejs astar_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(astar
  "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar
)

### Generating Module File
_generate_module_py(astar
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(astar_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(astar_generate_messages astar_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sis/sis_competition_2020/catkin_ws/src/competition_modules/task3/navigation/astar/srv/GoToPos.srv" NAME_WE)
add_dependencies(astar_generate_messages_py _astar_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_genpy)
add_dependencies(astar_genpy astar_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(astar_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(astar_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(astar_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(astar_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(astar_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(astar_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(astar_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(astar_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(astar_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(astar_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(astar_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(astar_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(astar_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(astar_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(astar_generate_messages_py std_msgs_generate_messages_py)
endif()
