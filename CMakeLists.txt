cmake_minimum_required(VERSION 3.22.1)
project(Face_Detector)

set(CMAKE_CXX_STANDARD 17)

find_package(Boost 1.74.0 REQUIRED COMPONENTS unit_test_framework)
find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(${Boost_INCLUDE_DIRS})

add_executable(Face_Detector main.cpp face_detector.cpp)
target_link_libraries(Face_Detector ${OpenCV_LIBS})

add_executable(Face_Detector_tests tests.cpp face_detector.cpp)
target_link_libraries(Face_Detector_tests ${OpenCV_LIBS} Boost::unit_test_framework)
