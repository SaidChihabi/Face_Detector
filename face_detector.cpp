#include "face_detector.h"
#include <stdexcept>

FaceDetector::FaceDetector(const std::string& cascade_path)
{
    if(!face_cascade.load(cascade_path))
    {
        throw std::runtime_error("Error loading cascade file for face");
    }
}

std::vector<cv::Rect> FaceDetector::detect(const cv::Mat& image)
{
    std::vector<cv::Rect> faces;
    cv::Mat grayscale_frame;
    
    if(image.channels() == 3)
    {
        cv::cvtColor(image, grayscale_frame, cv::COLOR_BGR2GRAY);
    }
    else
    {
        grayscale_frame = image;
    }
    
    face_cascade.detectMultiScale(grayscale_frame, faces, 1.1, 4);
    
    return faces;
}
