# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/catkin_ws/src/my_package

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/catkin_ws/build/my_package

# Include any dependencies generated for this target.
include CMakeFiles/simple.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple.dir/flags.make

CMakeFiles/simple.dir/src/simple.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/simple.cpp.o: /home/user/catkin_ws/src/my_package/src/simple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/catkin_ws/build/my_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple.dir/src/simple.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/simple.cpp.o -c /home/user/catkin_ws/src/my_package/src/simple.cpp

CMakeFiles/simple.dir/src/simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/simple.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/catkin_ws/src/my_package/src/simple.cpp > CMakeFiles/simple.dir/src/simple.cpp.i

CMakeFiles/simple.dir/src/simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/simple.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/catkin_ws/src/my_package/src/simple.cpp -o CMakeFiles/simple.dir/src/simple.cpp.s

# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/src/simple.cpp.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: CMakeFiles/simple.dir/src/simple.cpp.o
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: CMakeFiles/simple.dir/build.make
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/libroscpp.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/librosconsole.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/librostime.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /opt/ros/noetic/lib/libcpp_common.so
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple: CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/catkin_ws/build/my_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple.dir/build: /home/user/catkin_ws/devel/.private/my_package/lib/my_package/simple

.PHONY : CMakeFiles/simple.dir/build

CMakeFiles/simple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple.dir/clean

CMakeFiles/simple.dir/depend:
	cd /home/user/catkin_ws/build/my_package && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/catkin_ws/src/my_package /home/user/catkin_ws/src/my_package /home/user/catkin_ws/build/my_package /home/user/catkin_ws/build/my_package /home/user/catkin_ws/build/my_package/CMakeFiles/simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple.dir/depend

