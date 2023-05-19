#pragma once

#include <opencv2/objdetect.hpp>
#include <opencv2/imgproc.hpp>
#include <string>
#include <vector>

class FaceDetector
{
public:
    FaceDetector(const std::string& cascade_path);
    std::vector<cv::Rect> detect(const cv::Mat& image);
private:
    cv::CascadeClassifier face_cascade;
};
