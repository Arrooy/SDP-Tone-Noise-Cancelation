function Sk = Block_Window (fileName, frameDuration)
  if nargin < 2 
    fileName = 'files/testing1.wav';
    frameDuration = 10;
  end
  [audioData, fm] = audioread(fileName);
  audioDuration = (length(audioData(:,1)) * 1000) / fm;
  nFrames = round(audioDuration / frameDuration);
  audioMat = vec2mat(audioData(:,1), nFrames);
  Sk = audioMat;
endfunction
