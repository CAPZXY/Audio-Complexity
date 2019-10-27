该文件为matlab执行程序文件，可在主函数中直接调用。

sval2.m  为计算复杂度的函数
audiok.m 为计算复杂度中调用的用于生成自适应卷积核的函数

sval2.m 中可以对卷积核的长度进行控制

一般，帧长设置为10ms；因此输入的音频长度一般应大于您所设定的最大帧长



These two files are the funcations of calculating the audio complexity.

The function can calculate the audio complexity frame-by-frame.

Generally, the length of one frame is 10 ms, so the input audio signal should be longer than 10ms.

File "sval2.m" can be used in main funcation directly. The input is original audio, the output is the audio complexity frame-by-frame.