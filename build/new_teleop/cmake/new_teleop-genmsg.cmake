# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "new_teleop: 1 messages, 0 services")

set(MSG_I_FLAGS "-Inew_teleop:/home/tudeng/elmar_robtech/src/new_teleop/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(new_teleop_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg" NAME_WE)
add_custom_target(_new_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "new_teleop" "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(new_teleop
  "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/new_teleop
)

### Generating Services

### Generating Module File
_generate_module_cpp(new_teleop
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/new_teleop
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(new_teleop_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(new_teleop_generate_messages new_teleop_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg" NAME_WE)
add_dependencies(new_teleop_generate_messages_cpp _new_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(new_teleop_gencpp)
add_dependencies(new_teleop_gencpp new_teleop_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS new_teleop_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(new_teleop
  "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/new_teleop
)

### Generating Services

### Generating Module File
_generate_module_lisp(new_teleop
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/new_teleop
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(new_teleop_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(new_teleop_generate_messages new_teleop_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg" NAME_WE)
add_dependencies(new_teleop_generate_messages_lisp _new_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(new_teleop_genlisp)
add_dependencies(new_teleop_genlisp new_teleop_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS new_teleop_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(new_teleop
  "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/new_teleop
)

### Generating Services

### Generating Module File
_generate_module_py(new_teleop
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/new_teleop
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(new_teleop_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(new_teleop_generate_messages new_teleop_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tudeng/elmar_robtech/src/new_teleop/msg/Key.msg" NAME_WE)
add_dependencies(new_teleop_generate_messages_py _new_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(new_teleop_genpy)
add_dependencies(new_teleop_genpy new_teleop_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS new_teleop_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/new_teleop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/new_teleop
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(new_teleop_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/new_teleop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/new_teleop
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(new_teleop_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/new_teleop)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/new_teleop\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/new_teleop
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(new_teleop_generate_messages_py std_msgs_generate_messages_py)
endif()
