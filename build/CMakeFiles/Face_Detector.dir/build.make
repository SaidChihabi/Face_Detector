# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/saidchihabi/Desktop/Face_Detector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/saidchihabi/Desktop/Face_Detector/build

# Include any dependencies generated for this target.
include CMakeFiles/Face_Detector.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Face_Detector.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Face_Detector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Face_Detector.dir/flags.make

CMakeFiles/Face_Detector.dir/main.cpp.o: CMakeFiles/Face_Detector.dir/flags.make
CMakeFiles/Face_Detector.dir/main.cpp.o: /Users/saidchihabi/Desktop/Face_Detector/main.cpp
CMakeFiles/Face_Detector.dir/main.cpp.o: CMakeFiles/Face_Detector.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saidchihabi/Desktop/Face_Detector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Face_Detector.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Face_Detector.dir/main.cpp.o -MF CMakeFiles/Face_Detector.dir/main.cpp.o.d -o CMakeFiles/Face_Detector.dir/main.cpp.o -c /Users/saidchihabi/Desktop/Face_Detector/main.cpp

CMakeFiles/Face_Detector.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Face_Detector.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saidchihabi/Desktop/Face_Detector/main.cpp > CMakeFiles/Face_Detector.dir/main.cpp.i

CMakeFiles/Face_Detector.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Face_Detector.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saidchihabi/Desktop/Face_Detector/main.cpp -o CMakeFiles/Face_Detector.dir/main.cpp.s

CMakeFiles/Face_Detector.dir/face_detector.cpp.o: CMakeFiles/Face_Detector.dir/flags.make
CMakeFiles/Face_Detector.dir/face_detector.cpp.o: /Users/saidchihabi/Desktop/Face_Detector/face_detector.cpp
CMakeFiles/Face_Detector.dir/face_detector.cpp.o: CMakeFiles/Face_Detector.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saidchihabi/Desktop/Face_Detector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Face_Detector.dir/face_detector.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Face_Detector.dir/face_detector.cpp.o -MF CMakeFiles/Face_Detector.dir/face_detector.cpp.o.d -o CMakeFiles/Face_Detector.dir/face_detector.cpp.o -c /Users/saidchihabi/Desktop/Face_Detector/face_detector.cpp

CMakeFiles/Face_Detector.dir/face_detector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Face_Detector.dir/face_detector.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saidchihabi/Desktop/Face_Detector/face_detector.cpp > CMakeFiles/Face_Detector.dir/face_detector.cpp.i

CMakeFiles/Face_Detector.dir/face_detector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Face_Detector.dir/face_detector.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saidchihabi/Desktop/Face_Detector/face_detector.cpp -o CMakeFiles/Face_Detector.dir/face_detector.cpp.s

# Object files for target Face_Detector
Face_Detector_OBJECTS = \
"CMakeFiles/Face_Detector.dir/main.cpp.o" \
"CMakeFiles/Face_Detector.dir/face_detector.cpp.o"

# External object files for target Face_Detector
Face_Detector_EXTERNAL_OBJECTS =

Face_Detector: CMakeFiles/Face_Detector.dir/main.cpp.o
Face_Detector: CMakeFiles/Face_Detector.dir/face_detector.cpp.o
Face_Detector: CMakeFiles/Face_Detector.dir/build.make
Face_Detector: /opt/homebrew/lib/libopencv_gapi.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_stitching.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_alphamat.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_aruco.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_barcode.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_bgsegm.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_bioinspired.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_ccalib.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_dnn_objdetect.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_dnn_superres.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_dpm.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_face.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_freetype.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_fuzzy.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_hfs.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_img_hash.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_intensity_transform.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_line_descriptor.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_mcc.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_quality.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_rapid.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_reg.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_rgbd.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_saliency.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_sfm.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_stereo.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_structured_light.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_superres.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_surface_matching.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_tracking.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_videostab.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_viz.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_wechat_qrcode.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_xfeatures2d.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_xobjdetect.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_xphoto.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_shape.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_highgui.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_datasets.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_plot.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_text.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_ml.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_phase_unwrapping.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_optflow.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_ximgproc.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_video.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_videoio.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_imgcodecs.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_objdetect.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_calib3d.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_dnn.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_features2d.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_flann.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_photo.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_imgproc.4.7.0.dylib
Face_Detector: /opt/homebrew/lib/libopencv_core.4.7.0.dylib
Face_Detector: CMakeFiles/Face_Detector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/saidchihabi/Desktop/Face_Detector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Face_Detector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Face_Detector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Face_Detector.dir/build: Face_Detector
.PHONY : CMakeFiles/Face_Detector.dir/build

CMakeFiles/Face_Detector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Face_Detector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Face_Detector.dir/clean

CMakeFiles/Face_Detector.dir/depend:
	cd /Users/saidchihabi/Desktop/Face_Detector/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saidchihabi/Desktop/Face_Detector /Users/saidchihabi/Desktop/Face_Detector /Users/saidchihabi/Desktop/Face_Detector/build /Users/saidchihabi/Desktop/Face_Detector/build /Users/saidchihabi/Desktop/Face_Detector/build/CMakeFiles/Face_Detector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Face_Detector.dir/depend

