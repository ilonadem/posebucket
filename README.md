# POSEBUCKET REPO
This is a repo for collecting pose data on a pycoral device, which is largely based on the OG [project-posenet repo](https://github.com/google-coral/project-posenet)

## basic setup
NOTE: PoseNet relies on the latest Pycoral API, tflite_runtime API, and libedgetpu1-std or libedgetpu1-max:
  * For [pycoral](https://coral.ai/software#pycoral-api)
  * For [tflite_runtime](https://www.tensorflow.org/lite/guide/python#install_just_the_tensorflow_lite_interpreter)
  * For [libedgetpu](https://coral.ai/software#debian-packages), please install the [debian package](https://coral.ai/software#debian-packages) or [shared libraries](https://coral.ai/software#edgetpu-runtime). You can use either Max or Standard clock speed (these only apply for USB devices).

Please also update your system before running these examples. For more information on updating see:
  * For [Coral DevBoard](https://coral.withgoogle.com/docs/dev-board/get-started/#update-the-mendel-software)
  * For [USB Accelerator](https://coral.withgoogle.com/docs/accelerator/get-started/#set-up-on-linux-or-raspberry-pi)

To install all other requirements for third party libraries, simply run 

```
sh install_requirements.sh
```

## important notes on running things:
- If you are using a **basic USB camera** and not the **Coral Camera** then make sure to set video output to video1 always
- the fps that you will use for doing things will depend on the camera parameters. to make sure that you are setting the right camera paraemters, run: ```
v4l2-ctl --list-formats-ext --device /dev/video1 ``` to see the camera specs  and the appropriate fps.