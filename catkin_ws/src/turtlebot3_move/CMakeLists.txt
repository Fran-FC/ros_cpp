cmake_minimum_required(VERSION 3.0.2)
project(turtlebot3_move)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
  actionlib
  actionlib_msgs
  nav_msgs
)
add_service_files(
	FILES
	MoveInSquare.srv
)
add_action_files (
	FILES
	OdomRecord.action
)
generate_messages (
	DEPENDENCIES
	std_msgs
	actionlib_msgs
	nav_msgs
)
catkin_package(
 CATKIN_DEPENDS roscpp std_msgs actionlib_msgs actionlib message_runtime nav_msgs
#  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)


add_executable(tb3sp src/turtlebot3_sub_pub.cpp)
add_dependencies(tb3sp ${tb3sp_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(tb3sp ${catkin_LIBRARIES}) 

add_executable(mvsq src/service_server_square.cpp)
add_dependencies(mvsq ${mvsq_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(mvsq ${catkin_LIBRARIES}) 

add_executable(asod src/action_server_odom.cpp)
add_dependencies(asod ${asod_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(asod ${catkin_LIBRARIES}) 

add_dependencies(tb3sp turtlebot3_move_generate_messages_cpp)
add_dependencies(mvsq turtlebot3_move_generate_messages_cpp)
add_dependencies(asod turtlebot3_move_generate_messages_cpp)