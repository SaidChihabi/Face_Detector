# Face Recognition System

This is a real-time face recognition project using OpenCV and C++.

## Prerequisites

- OpenCV 4.0 or higher
- CMake 3.0 or higher
- C++11 compatible compiler
- Boost Library for unit testing

## Features

- Real-time face detection and recognition
- Usage of Haar Cascade Classifier for high accuracy detection
- Optimized build process using CMake
- Code validation through unit testing using the Boost library
- Continuous Integration setup using GitHub Actions

## Installation

Clone the repository:
 ```
 git clone https://github.com/SaidChihabi/Face_Detector.git
 ```
 
 
 
Create a build directory:

```
cd Face-Recognition
mkdir build
cd build
```


Generate the build files using CMake:

```
cmake ..
```


Build the project:

```
make
```


## Usage

Run the executable:

```
./Face_Detector
```


## Configuration

The parameters for face detection can be configured in the main.cpp file. By default, the code is set up for real-time face detection.

## Testing

Unit tests can be run using the `Face_Detector_tests` executable generated during the build process. These tests use the Boost testing framework. 

```
./Face_Detector_tests
```


## License

This project is licensed under the MIT License - see the LICENSE file for details.
