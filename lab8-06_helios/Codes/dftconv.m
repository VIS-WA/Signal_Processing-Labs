function [c1,c2]= dftconv(x1,x2)
n=length(x1);
c2=ifft(fft(x1,2*n-1).*fft(x2,2*n-1));
c1=ifft(fft(x1).*fft(x2));
end

