g=rand(10,1)
#직접 만든 DFT 함수로 Fourier Transform
A = DFT(g)
#matlab 내장함수로 Fast Fourier Transform
B = fft(g)


#직접 만든 DFT 함수
function G = DFT(g)
    M = length(g);
    W = exp(-1j*2*pi/M*(0:M-1)'*(0:M-1));
    
    G = W*g;
end
