M=1:10:2000;%running simultion for n=10 to 2000 with a step of 10
a=zeros(size(M));%time for DFT
b=a;%time vector for FFT
k=1;
x=randn(1,2000);
for i=M
    x1=x(:,[1:i]);
    tic
    directdft(x1);
    a(k)=toc;
    tic
    fft(x1);
    b(k)=toc;
    k=k+1;
    
end
plot(M,a,M,b);
