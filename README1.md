# Residual-based-Audio-Complexity-Evaluation-for-Steganography
In this work, we attempt to characterize the complexity of audio for selecting steganographic cover. Specifically, the original cover is first convoluted with a specially designed adaptive convolution operator, the new audio can be reconstructed by convolution. Then, we derive a quantity for measuring the complexity of each frame in an audio clip, based on the residual of the original and reconstructed audio. The setting of the involved hyperparameters are thoroughly discussed via empirical study.

Using MATLAB 2016b or latest version

These two files are the funcations of calculating the audio complexity.

The function can calculate the audio complexity frame-by-frame.

Generally, the length of one frame is 10 ms, so the input audio signal should be longer than 10ms.

File "sval2.m" can be used in main funcation directly. The input is original audio, the output is the audio complexity frame-by-frame.


