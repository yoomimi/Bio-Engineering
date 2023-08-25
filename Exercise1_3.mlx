g=rand(10,1)

A = DFT(g)

B = fft(g)

function G = DFT(g)
    M = length(g);
    W = exp(-1j*2*pi/M*(0:M-1)'*(0:M-1));
    
    G = W*g;
end
