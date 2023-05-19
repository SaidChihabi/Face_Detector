#define BOOST_TEST_MODULE FaceDetectorTest
#include <boost/test/included/unit_test.hpp>
#include "face_detector.h"
#include <opencv2/imgcodecs.hpp>

BOOST_AUTO_TEST_CASE(ConstructorTest)
{
    // Test that the constructor does not throw an exception when given a valid path
    BOOST_CHECK_NO_THROW(FaceDetector("/opt/homebrew/Cellar/opencv/4.7.0_4/share/opencv4/haarcascades/haarcascade_frontalface_default.xml"));
    
    // Test that the constructor throws an exception when given an invalid path
    BOOST_CHECK_THROW(FaceDetector("/path/to/invalid/haarcascade_frontalface_default.xml"), std::runtime_error);
}


BOOST_AUTO_TEST_CASE(DetectionTest)
{
    FaceDetector detector("/opt/homebrew/Cellar/opencv/4.7.0_4/share/opencv4/haarcascades/haarcascade_frontalface_default.xml");

    // Load a test image
    cv::Mat test_image = cv::imread("../faceimg.jpg", cv::IMREAD_GRAYSCALE);
    
    // Test that the detect method returns a non-empty vector when given an image with a face
    BOOST_CHECK(!detector.detect(test_image).empty());

    // Test that the detect method returns an empty vector when given an image without a face
    cv::Mat empty_image = cv::Mat::zeros(test_image.size(), test_image.type());
    BOOST_CHECK(detector.detect(empty_image).empty());
}
