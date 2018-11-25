# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ur_control: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ur_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv" NAME_WE)
add_custom_target(_ur_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_control" "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv" ""
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv" NAME_WE)
add_custom_target(_ur_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_control" "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv" "std_msgs/Float64"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ur_control
  "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_control
)
_generate_srv_cpp(ur_control
  "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_control
)

### Generating Module File
_generate_module_cpp(ur_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ur_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ur_control_generate_messages ur_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv" NAME_WE)
add_dependencies(ur_control_generate_messages_cpp _ur_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv" NAME_WE)
add_dependencies(ur_control_generate_messages_cpp _ur_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_control_gencpp)
add_dependencies(ur_control_gencpp ur_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_control_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ur_control
  "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_control
)
_generate_srv_lisp(ur_control
  "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_control
)

### Generating Module File
_generate_module_lisp(ur_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ur_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ur_control_generate_messages ur_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv" NAME_WE)
add_dependencies(ur_control_generate_messages_lisp _ur_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv" NAME_WE)
add_dependencies(ur_control_generate_messages_lisp _ur_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_control_genlisp)
add_dependencies(ur_control_genlisp ur_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_control_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ur_control
  "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_control
)
_generate_srv_py(ur_control
  "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_control
)

### Generating Module File
_generate_module_py(ur_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ur_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ur_control_generate_messages ur_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2_Grip.srv" NAME_WE)
add_dependencies(ur_control_generate_messages_py _ur_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/ur_control/srv/RG2.srv" NAME_WE)
add_dependencies(ur_control_generate_messages_py _ur_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_control_genpy)
add_dependencies(ur_control_genpy ur_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ur_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ur_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ur_control_generate_messages_py std_msgs_generate_messages_py)
endif()
