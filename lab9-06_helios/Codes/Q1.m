%-------------------Rectangular Window-----------------------
N=51;

for n=0:N-1
   w(n+1)=1;
end
W=fft(w,500);
z=fftshift(W);
subplot(3,3,1)
plot(w);
title("N=51 ,w[n]");
L=normalize(z);
subplot(3,3,2)
plot(20*log10(abs(L)));
title("N=51 ,magnitude of W[e^jw} in dB");
ylim([-100,10]);
subplot(3,3,3)
plot(1:500,angle(W));
title("N=51, phase");
%-------------------N=75-----------------------
L=75;
for n=0:L-1
   w1(n+1)=1;
end
W=fft(w1,500);
z1=fftshift(W);
subplot(3,3,4)
plot(w1);
title("N=75 ,w1");
N=normalize((z1));
subplot(3,3,5)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=75 ,magnitude in dB");
subplot(3,3,6)
plot(1:500,angle(W));
title("N=75, phase");
%------------------L=101---------------------------
L=101;
for n=0:L-1
   w2(n+1)=1;
end
W=fft(w2,500);
z2=fftshift(W);
subplot(3,3,7)
plot(w2);
title("N=101 ,w[n]");
N2=normalize(z2);
subplot(3,3,8)
plot(1:500,20*log10(abs(N2)));
ylim([-100,10]);
title("N=101 ,magnitude in dB");
subplot(3,3,9)
plot(1:500,angle(W));
title("N=101, phase");
%---------------------bartlett window---------------
L=51;
w=bartlett(L);
W=fft(w,500);
z=fftshift(W);
figure();
subplot(3,3,1)
plot(w);
title("N=51 ,w[n]");
N=normalize(z);
subplot(3,3,2)
plot(20*log10(abs(N)));
title("N=51 ,magnitude of W[e^jw} in dB");
ylim([-100,10]);
subplot(3,3,3)
plot(1:500,angle(W));
title("N=51, phase");
%-------------------N=75-----------------------
L=75;
w1=bartlett(L);
W=fft(w1,500);
z=fftshift(W);
subplot(3,3,4)
plot(w1);
title("N=75 ,w1");
N=normalize(z);
subplot(3,3,5)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=75 ,magnitude in dB");
subplot(3,3,6)
plot(1:500,angle(W));
title("N=75, phase");
%------------------L=101---------------------------
L=101;
w2=bartlett(L);
W=fft(w2,500);
z=fftshift(W);
subplot(3,3,7)
plot(w2);
title("N=101 ,w[n]");
N=normalize(z);
subplot(3,3,8)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=101 ,magnitude in dB");
subplot(3,3,9)
plot(1:500,angle(W));
title("N=101, phase");
%-------------------------Hamming Window---------------------------------
L=51;
w=hamming(L);
W=fft(w,500);
z=fftshift(W);
figure()
subplot(3,3,1)
plot(w);
title("N=51 ,w[n]");
N=normalize(z);
subplot(3,3,2)
plot(20*log10(abs(N)));
title("N=51 magnitude of W[e^jw} in dB");
ylim([-100,10]);
subplot(3,3,3)
plot(1:500,angle(W));
title("N=51, phase");
%-------------------L=75-----------------------
L=75;
w1=hamming(L);
W=fft(w1,500);
z=fftshift(W);
subplot(3,3,4)
plot(w1);
title("N=75 ,w[n]");
N=normalize(z);
subplot(3,3,5)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=75 ,magnitude in dB");
subplot(3,3,6)
plot(1:500,angle(W));
title("N=75, phase");
%------------------L=101---------------------------
L=101;
w2=hamming(L);
W=fft(w2,500);
z=fftshift(W);
subplot(3,3,7)
plot(w2);
title("N=101 ,w[n]");
N=normalize(z);
subplot(3,3,8)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=101 ,magnitude in dB");
subplot(3,3,9)
plot(1:500,angle(W));
title("N=101, phase");
%-------------------------Hann Window---------------------------------
L=51;
w=hann(L);
W=fft(w,500);
z=fftshift(W);
figure()
subplot(3,3,1)
plot(w);
title("N=51 ,w[n]");
N=normalize(z);
subplot(3,3,2)
plot(20*log10(abs(N)));
title("N=51 ,magnitude of W[e^jw} in dB");
ylim([-100,10]);
subplot(3,3,3)
plot(1:500,angle(W));
title("N=51, phase");
%-------------------L=75-----------------------
L=75;
w1=hann(L);
W=fft(w1,500);
z=fftshift(W);
subplot(3,3,4)
plot(w1);
title("N=75 ,w1");
N=normalize(z);
subplot(3,3,5)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=75 ,magnitude in dB");
subplot(3,3,6)
plot(1:500,angle(W));
title("N=75, phase");
%------------------L=101---------------------------
L=101;
w2=hann(L);
W=fft(w2,500);
z=fftshift(W);
subplot(3,3,7)
plot(w2);
title("N=101 ,w[n]");
N=normalize(z);
subplot(3,3,8)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=101 ,magnitude in dB");
subplot(3,3,9)
plot(1:500,angle(W));
title("N=101, phase");
%-------------------------BlackMan Window---------------------------------
L=51;
w=blackman(L);
W=fft(w,500);
z=fftshift(W);
figure()
subplot(3,3,1)
plot(w);
title("N=51 ,w[n]");
N=normalize(z);
subplot(3,3,2)
plot(20*log10(abs(N)));
title("N=51 ,magnitude of W[e^jw} in dB");
ylim([-100,10]);
subplot(3,3,3)
plot(1:500,angle(W));
title("N=51, phase");
%-------------------L=75-----------------------
L=75;
w1=blackman(L);
W=fft(w1,500);
z=fftshift(W);
subplot(3,3,4)
plot(w1);
title("N=75 ,w1");
N=normalize(z);
subplot(3,3,5)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=75 ,magnitude in dB");
subplot(3,3,6)
plot(1:500,angle(W));
title("N=75, phase");
%------------------L=101---------------------------
L=101;
w2=blackman(L);
W=fft(w2,500);
z=fftshift(W);
subplot(3,3,7)
plot(w2);
title("N=101 ,w[n]");
N=normalize(z);
subplot(3,3,8)
plot(1:500,20*log10(abs(N)));
ylim([-100,10]);
title("N=101 ,magnitude in dB");
subplot(3,3,9)
plot(1:500,angle(W));
title("N=101, phase");