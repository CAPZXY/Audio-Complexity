# Residual-based-Audio-Complexity-Evaluation-for-Steganography
In this work, we attempt to characterize the complexity of audio for selecting steganographic cover. Specifically, the original cover is first convoluted with a specially designed adaptive convolution operator(kernel), the new audio can be reconstructed by convolution. Then, we derive a quantity for measuring the complexity of each frame in an audio clip, based on the residual of the original and reconstructed audio. The setting of the involved hyperparameters, like 'w'(preset weight) and 'n'(length of the operator), can be set personally.

## Files description
These two files are the funcations of calculating the audio complexity.<br>
The function can calculate the audio complexity frame-by-frame.<br>
File "sval2.m" can be used in main function directly.<br>
File "audiok.m" can calculate the adaptive convolution operator(kernel). Which is used in file "sval2.m" automatically.

## Usage
### c=sval2(s);
s denotes the audio signal, c denotes the complexity of the s.<br>
The audio complexity is calculated frame-by-frame.<br>
Generally, the length of one frame is 10 ms, so the input audio signal should be longer than 10ms.<br>
### k=audio(x);
x denotes the part of audio signal used to calculate the adaptive convolution operator(kernel), k denotes the operator. <br>
The length of k is as same as x.

## Software requirements
Using MATLAB 2016b or the latest version.


