function Wok = Tone_detect(Sk, i)
  ZSk = fft(Sk);
  ZSk = mag2db(abs(ZSk(i)));
  [max, ko] = max(ZSk(i));
  Wok = (2 * pi * ko) /  length(ZSk);   
endfunction
