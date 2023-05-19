#include "face_detector.h"
#include <opencv2/highgui.hpp>
#include <iostream>

int main()
{
    cv::VideoCapture cap(0);
    if (!cap.isOpened()) {
        std::cerr << "ERROR: Could not open camera" << '\n';
        return -1;
    }

    FaceDetector detector("/opt/homebrew/Cellar/opencv/4.7.0_4/share/opencv4/haarcascades/haarcascade_frontalface_default.xml");

    try
    {
        cv::Mat frame;

        while (true)
        {
            // Capture frame-by-frame
            cap >> frame;
            
            if (frame.empty()) {
                std::cerr << "ERROR: Frame is empty" << '\n';
                break;
            }

            std::vector<cv::Rect> faces = detector.detect(frame);

            for (const cv::Rect& face : faces)
            {
                cv::rectangle(frame, face, cv::Scalar(0, 255, 0), 2);
            }

            cv::imshow("Face Detection", frame);

            // If 'q' key is pressed on keyboard, exit loop
            if (cv::waitKey(1) == 'q') {
                break;
            }
        }
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
    }

    return 0;
}
