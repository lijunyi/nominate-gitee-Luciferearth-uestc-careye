# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/norse/SoftWear/clion-2017.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/norse/SoftWear/clion-2017.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/norse/WorkSpace/C/UESTC-SaveEye

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/norse/WorkSpace/C/UESTC-SaveEye/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/UESTC_MobileEye.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/UESTC_MobileEye.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UESTC_MobileEye.dir/flags.make

CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o: CMakeFiles/UESTC_MobileEye.dir/flags.make
CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o: ../Main/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/norse/WorkSpace/C/UESTC-SaveEye/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o -c /home/norse/WorkSpace/C/UESTC-SaveEye/Main/main.cpp

CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/norse/WorkSpace/C/UESTC-SaveEye/Main/main.cpp > CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.i

CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/norse/WorkSpace/C/UESTC-SaveEye/Main/main.cpp -o CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.s

CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.requires:

.PHONY : CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.requires

CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.provides: CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/UESTC_MobileEye.dir/build.make CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.provides.build
.PHONY : CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.provides

CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.provides.build: CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o


# Object files for target UESTC_MobileEye
UESTC_MobileEye_OBJECTS = \
"CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o"

# External object files for target UESTC_MobileEye
UESTC_MobileEye_EXTERNAL_OBJECTS =

bin/libs/UESTC_MobileEye: CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o
bin/libs/UESTC_MobileEye: CMakeFiles/UESTC_MobileEye.dir/build.make
bin/libs/UESTC_MobileEye: Thread/bin/libs/libThread.so
bin/libs/UESTC_MobileEye: cvModel/bin/libs/libcvModel.so
bin/libs/UESTC_MobileEye: weather/bin/libs/libweather.so
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_shape.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_stitching.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_objdetect.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_superres.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_videostab.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_calib3d.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_features2d.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_flann.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_highgui.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_ml.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_photo.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_video.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_videoio.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_imgproc.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_viz.so.3.2.0
bin/libs/UESTC_MobileEye: /usr/local/lib/libopencv_core.so.3.2.0
bin/libs/UESTC_MobileEye: CMakeFiles/UESTC_MobileEye.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/norse/WorkSpace/C/UESTC-SaveEye/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/libs/UESTC_MobileEye"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UESTC_MobileEye.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UESTC_MobileEye.dir/build: bin/libs/UESTC_MobileEye

.PHONY : CMakeFiles/UESTC_MobileEye.dir/build

CMakeFiles/UESTC_MobileEye.dir/requires: CMakeFiles/UESTC_MobileEye.dir/Main/main.cpp.o.requires

.PHONY : CMakeFiles/UESTC_MobileEye.dir/requires

CMakeFiles/UESTC_MobileEye.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/UESTC_MobileEye.dir/cmake_clean.cmake
.PHONY : CMakeFiles/UESTC_MobileEye.dir/clean

CMakeFiles/UESTC_MobileEye.dir/depend:
	cd /home/norse/WorkSpace/C/UESTC-SaveEye/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/norse/WorkSpace/C/UESTC-SaveEye /home/norse/WorkSpace/C/UESTC-SaveEye /home/norse/WorkSpace/C/UESTC-SaveEye/cmake-build-debug /home/norse/WorkSpace/C/UESTC-SaveEye/cmake-build-debug /home/norse/WorkSpace/C/UESTC-SaveEye/cmake-build-debug/CMakeFiles/UESTC_MobileEye.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/UESTC_MobileEye.dir/depend

