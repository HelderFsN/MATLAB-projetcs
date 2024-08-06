recorder = audiorecorder;
recordblocking(recorder, 2)
audioData = getaudiodata(recorder)
plot(audioData)