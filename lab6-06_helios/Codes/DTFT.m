function X = DTFT(x,N0,w)
X=zeros(size(w));
for i=1:length(x)
    X = X + x(i)*exp(-1j*w*(N0-i));
end

