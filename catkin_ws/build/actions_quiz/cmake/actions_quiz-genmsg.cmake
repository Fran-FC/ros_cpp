# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "actions_quiz: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iactions_quiz:/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(actions_quiz_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_custom_target(_actions_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actions_quiz" "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg" "std_msgs/Header:actions_quiz/CustomActionMsgActionGoal:actions_quiz/CustomActionMsgActionFeedback:actions_quiz/CustomActionMsgActionResult:actions_quiz/CustomActionMsgResult:actions_quiz/CustomActionMsgGoal:actionlib_msgs/GoalStatus:actions_quiz/CustomActionMsgFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_custom_target(_actions_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actions_quiz" "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:actions_quiz/CustomActionMsgGoal"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_custom_target(_actions_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actions_quiz" "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg" "actionlib_msgs/GoalID:actions_quiz/CustomActionMsgResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_custom_target(_actions_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actions_quiz" "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actions_quiz/CustomActionMsgFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_custom_target(_actions_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actions_quiz" "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_custom_target(_actions_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actions_quiz" "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_custom_target(_actions_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actions_quiz" "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
)
_generate_msg_cpp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
)
_generate_msg_cpp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
)
_generate_msg_cpp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
)
_generate_msg_cpp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
)
_generate_msg_cpp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
)
_generate_msg_cpp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
)

### Generating Services

### Generating Module File
_generate_module_cpp(actions_quiz
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(actions_quiz_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(actions_quiz_generate_messages actions_quiz_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_cpp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_cpp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_cpp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_cpp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_cpp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_cpp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_cpp _actions_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actions_quiz_gencpp)
add_dependencies(actions_quiz_gencpp actions_quiz_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actions_quiz_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
)
_generate_msg_eus(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
)
_generate_msg_eus(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
)
_generate_msg_eus(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
)
_generate_msg_eus(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
)
_generate_msg_eus(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
)
_generate_msg_eus(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
)

### Generating Services

### Generating Module File
_generate_module_eus(actions_quiz
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(actions_quiz_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(actions_quiz_generate_messages actions_quiz_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_eus _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_eus _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_eus _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_eus _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_eus _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_eus _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_eus _actions_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actions_quiz_geneus)
add_dependencies(actions_quiz_geneus actions_quiz_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actions_quiz_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
)
_generate_msg_lisp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
)
_generate_msg_lisp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
)
_generate_msg_lisp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
)
_generate_msg_lisp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
)
_generate_msg_lisp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
)
_generate_msg_lisp(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
)

### Generating Services

### Generating Module File
_generate_module_lisp(actions_quiz
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(actions_quiz_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(actions_quiz_generate_messages actions_quiz_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_lisp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_lisp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_lisp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_lisp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_lisp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_lisp _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_lisp _actions_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actions_quiz_genlisp)
add_dependencies(actions_quiz_genlisp actions_quiz_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actions_quiz_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
)
_generate_msg_nodejs(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
)
_generate_msg_nodejs(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
)
_generate_msg_nodejs(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
)
_generate_msg_nodejs(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
)
_generate_msg_nodejs(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
)
_generate_msg_nodejs(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
)

### Generating Services

### Generating Module File
_generate_module_nodejs(actions_quiz
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(actions_quiz_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(actions_quiz_generate_messages actions_quiz_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_nodejs _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_nodejs _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_nodejs _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_nodejs _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_nodejs _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_nodejs _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_nodejs _actions_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actions_quiz_gennodejs)
add_dependencies(actions_quiz_gennodejs actions_quiz_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actions_quiz_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
)
_generate_msg_py(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
)
_generate_msg_py(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
)
_generate_msg_py(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
)
_generate_msg_py(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
)
_generate_msg_py(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
)
_generate_msg_py(actions_quiz
  "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
)

### Generating Services

### Generating Module File
_generate_module_py(actions_quiz
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(actions_quiz_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(actions_quiz_generate_messages actions_quiz_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_py _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_py _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_py _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_py _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_py _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_py _actions_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/actions_quiz/share/actions_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(actions_quiz_generate_messages_py _actions_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actions_quiz_genpy)
add_dependencies(actions_quiz_genpy actions_quiz_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actions_quiz_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actions_quiz
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(actions_quiz_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(actions_quiz_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actions_quiz
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(actions_quiz_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(actions_quiz_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actions_quiz
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(actions_quiz_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(actions_quiz_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actions_quiz
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(actions_quiz_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(actions_quiz_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actions_quiz
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(actions_quiz_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(actions_quiz_generate_messages_py std_msgs_generate_messages_py)
endif()
