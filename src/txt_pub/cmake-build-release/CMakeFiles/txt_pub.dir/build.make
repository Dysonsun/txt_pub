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
CMAKE_COMMAND = /home/sundong/workspace/sorftware/clion-2020.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/sundong/workspace/sorftware/clion-2020.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/txt_pub.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/txt_pub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/txt_pub.dir/flags.make

CMakeFiles/txt_pub.dir/src/txt_pub.cpp.o: CMakeFiles/txt_pub.dir/flags.make
CMakeFiles/txt_pub.dir/src/txt_pub.cpp.o: ../src/txt_pub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/txt_pub.dir/src/txt_pub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/txt_pub.dir/src/txt_pub.cpp.o -c /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/src/txt_pub.cpp

CMakeFiles/txt_pub.dir/src/txt_pub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/txt_pub.dir/src/txt_pub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/src/txt_pub.cpp > CMakeFiles/txt_pub.dir/src/txt_pub.cpp.i

CMakeFiles/txt_pub.dir/src/txt_pub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/txt_pub.dir/src/txt_pub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/src/txt_pub.cpp -o CMakeFiles/txt_pub.dir/src/txt_pub.cpp.s

# Object files for target txt_pub
txt_pub_OBJECTS = \
"CMakeFiles/txt_pub.dir/src/txt_pub.cpp.o"

# External object files for target txt_pub
txt_pub_EXTERNAL_OBJECTS =

devel/lib/txt_pub/txt_pub: CMakeFiles/txt_pub.dir/src/txt_pub.cpp.o
devel/lib/txt_pub/txt_pub: CMakeFiles/txt_pub.dir/build.make
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/libroscpp.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/librosconsole.so
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/libxmlrpcpp.so
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/libroscpp_serialization.so
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/librostime.so
devel/lib/txt_pub/txt_pub: /opt/ros/kinetic/lib/libcpp_common.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/txt_pub/txt_pub: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/txt_pub/txt_pub: CMakeFiles/txt_pub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/txt_pub/txt_pub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/txt_pub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/txt_pub.dir/build: devel/lib/txt_pub/txt_pub

.PHONY : CMakeFiles/txt_pub.dir/build

CMakeFiles/txt_pub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/txt_pub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/txt_pub.dir/clean

CMakeFiles/txt_pub.dir/depend:
	cd /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/cmake-build-release /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/cmake-build-release /home/sundong/bit_ivrc/other/txt_pub/src/txt_pub/cmake-build-release/CMakeFiles/txt_pub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/txt_pub.dir/depend

