cmake_minimum_required(VERSION 3.26.3)
project(Object-Detection)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(Object-Detection main.cpp)

target_link_libraries(Object-Detection ${OpenCV_LIBS})