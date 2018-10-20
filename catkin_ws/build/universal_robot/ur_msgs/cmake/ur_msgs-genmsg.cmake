# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ur_msgs: 6 messages, 2 services")

set(MSG_I_FLAGS "-Iur_msgs:/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ur_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv" ""
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg" ""
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv" ""
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg" ""
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg" ""
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg" ""
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg" "ur_msgs/Digital:ur_msgs/Analog"
)

get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg" NAME_WE)
add_custom_target(_ur_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur_msgs" "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg"
  "${MSG_I_FLAGS}"
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg;/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)

### Generating Services
_generate_srv_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_srv_cpp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)

### Generating Module File
_generate_module_cpp(ur_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ur_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ur_msgs_generate_messages ur_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_cpp _ur_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_msgs_gencpp)
add_dependencies(ur_msgs_gencpp ur_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg"
  "${MSG_I_FLAGS}"
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg;/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)

### Generating Services
_generate_srv_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_srv_lisp(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)

### Generating Module File
_generate_module_lisp(ur_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ur_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ur_msgs_generate_messages ur_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_lisp _ur_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_msgs_genlisp)
add_dependencies(ur_msgs_genlisp ur_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg"
  "${MSG_I_FLAGS}"
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg;/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)

### Generating Services
_generate_srv_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_srv_py(ur_msgs
  "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)

### Generating Module File
_generate_module_py(ur_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ur_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ur_msgs_generate_messages ur_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/ToolDataMsg.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/longyucheng/robot_ur5/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(ur_msgs_generate_messages_py _ur_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur_msgs_genpy)
add_dependencies(ur_msgs_genpy ur_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ur_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ur_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ur_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
