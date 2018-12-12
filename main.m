#fileName = input('Introdueix Path relatiu del fitxer: ');
#frameDuration = input('Introdueix la duracio de cada frame (ms): ');

[Sk, fm] = Block_Window();#fileName, frameDuration);
Zi = poly(0);
for k = 1 : length(Sk)
  Wok = Tone_detect(Sk, k);
  [Sfilt, Zi] = BPF(Sk, Wok, k, Zi);
  if k = 1
    audioOut = Sfilt;
  else
    audioOut = horzcat(audioOut, Sfilt);
  end  
endfor

wavwrite('audioOut.wav', audioOut, fm);
sound(audioOut, fm);



