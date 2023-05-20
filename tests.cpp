#define BOOST_TEST_MODULE FaceDetectorTest
#include <boost/test/included/unit_test.hpp>
#include <opencv2/objdetect.hpp>
#include <opencv2/imgcodecs.hpp>

BOOST_AUTO_TEST_CASE(DetectionTest)
{
    std::string cascade_path = "../haarcascade_frontalface_default.xml";
    cv::CascadeClassifier face_cascade;
    if (!face_cascade.load(cascade_path))
    {
        BOOST_FAIL("Error loading cascade file for face");
    }

    // Load a test image
    cv::Mat test_image = cv::imread("../faceimg.jpg", cv::IMREAD_GRAYSCALE);

    // Detect faces
    std::vector<cv::Rect> faces;
    face_cascade.detectMultiScale(test_image, faces, 1.1, 4);

    // Test that the detect method returns a non-empty vector when given an image with a face
    BOOST_CHECK(!faces.empty());

    // Test that the detect method returns an empty vector when given an image without a face
    cv::Mat empty_image = cv::Mat::zeros(test_image.size(), test_image.type());
    face_cascade.detectMultiScale(empty_image, faces, 1.1, 4);
    BOOST_CHECK(faces.empty());
}
