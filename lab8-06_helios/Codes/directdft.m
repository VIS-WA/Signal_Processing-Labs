function X=directdft(x)
[a,b]=size(x);
if (a>b) 
    x=x';
end
N=max(a,b);
z=[0:N-1]' * [0:N-1];
Wn=exp(-1j*2*pi*z/N);
X=Wn*x';
end

