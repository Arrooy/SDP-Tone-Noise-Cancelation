function [Sfilt, Zf] = BPF (Sk, Wok, index, Zi)
 z1 = abs(Sk(index)) * exp(i * Wok);
 z2 = abs(Sk(index)) * exp(i * Wok);
  
 pol = poly([z1, z2]);
 [Sfilt, Zf] = filter(pol, 1, Sk, Zi);
endfunction
