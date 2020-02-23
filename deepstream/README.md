# DeepStream Use Case Exercise Notebooks:
https://courses.nvidia.com/courses/course-v1:DLI+C-IV-02+V1/info

The DeepStream SDK includes [sample reference applications](https://docs.nvidia.com/metropolis/deepstream/dev-guide/index.html#page/DeepStream%2520Development%2520Guide%2Fdeepstream_quick_start.html%23wwpID0E2HA) for various use cases. In the course notebooks, you'll learn how to leverage these examples and expand upon them to create new DeepStream applications. You'll be able to watch the streams on your computer using the media player. If you did not install it yet, do so before beginning the exercises: refer back to the Install Media Player and Run Media Player sections.

1. Object Detection Application  
Notebook 1: Build a DeepStream pipeline to find objects in a video stream, annotate them with bounding boxes, and output the annotated stream along with a count of the objects found.

2. Multiple Networks Application  
Notebook 2: Build a DeepStream application to find objects in a video stream, pass those images through multiple classification networks, and display detailed information about the objects in the output stream.

3. Multiple Stream Input  
Notebook 3: Add the ability to run inference on multiple input streams with a tiled output.

4. Video File Output  
Notebook 4: Add the ability to save an annotated video stream to a file in the format of your choice, for download and later use.

5. (Optional) Using Different Neural Networks  
Requires an Internet connection to the Jetson Nano  
Notebook 5: Change the neural network in the DeepStream Pipeline to another, such as YOLO (You Only Look Once).

- Disclaimer: The YOLO model is an open model taken from http://pjreddie.com/darknet and https://github.com/pjreddie/darknet. NVIDIA doesn't guarantee accuracy of this model. The accuracy might vary based on the video.
- Tip: You can try your own videos with this lab, or download some from the Internet from sites such as https://www.pexels.com/ or https://www.videvo.net/.
6. (Optional) Live Stream  
Requires a USB webcam connected to the Jetson Nano  
Notebook 6: Run inference on a live stream from a webcam connected to the Jetson Nano.
