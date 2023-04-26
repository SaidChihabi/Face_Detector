#include <opencv2/opencv.hpp>

using namespace cv;

int main()
{
    // Open the video stream
    VideoCapture cap(0);
    if (!cap.isOpened())
    {
        std::cout << "Error opening video stream" << std::endl;
        return -1;
    }

    // Create a background subtractor object
    Ptr<BackgroundSubtractorMOG2> bgsubtractor = createBackgroundSubtractorMOG2();

    while (true)
    {
        Mat frame;
        cap >> frame;

        if (frame.empty())
            break;

        // Apply the background subtractor to the frame
        Mat fgmask;
        bgsubtractor->apply(frame, fgmask);

        // Morphological operations to remove noise
        Mat kernel = getStructuringElement(MORPH_ELLIPSE, Size(5, 5));
        morphologyEx(fgmask, fgmask, MORPH_OPEN, kernel);
        morphologyEx(fgmask, fgmask, MORPH_CLOSE, kernel);

        // Find contours of objects in the foreground
        std::vector<std::vector<Point>> contours;
        findContours(fgmask, contours, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);

        // Draw bounding boxes around objects
        for (size_t i = 0; i < contours.size(); i++)
        {
            Rect bbox = boundingRect(contours[i]);
            rectangle(frame, bbox, Scalar(0, 255, 0), 2);
        }

        // Display the resulting frame
        imshow("Frame", frame);

        // Press ESC on keyboard to exit
        char c = (char)waitKey(25);
        if (c == 27)
            break;
    }

    // Release the video capture object
    cap.release();

    // Close all windows
    destroyAllWindows();

    return 0;
}
