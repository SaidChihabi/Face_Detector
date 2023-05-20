#include <opencv2/objdetect.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>

int main()
{
    // Load the cascade
    cv::CascadeClassifier face_cascade;
    if (!face_cascade.load("/System/Volumes/Data/opt/homebrew/Cellar/opencv/4.7.0_4/share/opencv4/haarcascades/haarcascade_frontalface_default.xml"))
    {
        std::cout << "Error loading cascade file for face" << std::endl;
        return 1;
    }

    // Start the camera
    cv::VideoCapture capture(0);
    if (!capture.isOpened())
    {
        std::cout << "Error opening video capture" << std::endl;
        return 1;
    }

    cv::Mat frame;
    while (capture.read(frame))
    {
        // Convert the frame to grayscale
        cv::Mat grayscale_frame;
        cv::cvtColor(frame, grayscale_frame, cv::COLOR_BGR2GRAY);

        // Perform face detection
        std::vector<cv::Rect> faces;
        face_cascade.detectMultiScale(grayscale_frame, faces, 1.1, 4);

        // Draw rectangles around the faces and display "Person" below each bounding box
        for (int i = 0; i < faces.size(); i++)
        {
            cv::rectangle(frame, faces[i], cv::Scalar(0, 255, 0), 2);
            cv::putText(frame, "Person", cv::Point(faces[i].x, faces[i].y + faces[i].height + 20), cv::FONT_HERSHEY_SIMPLEX, 0.7, cv::Scalar(0, 255, 0), 2);
        }

        // Show the frame
        cv::imshow("Face Detection", frame);

        // Stop the camera when 'ESC' is pressed
        if (cv::waitKey(10) == 27)
        {
            break;
        }
    }

    return 0;
}
