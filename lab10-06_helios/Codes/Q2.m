% w0=pi/4;b0=1/0.5858;
% b1= [1,-exp(1j*w0)];
% b2= [1,-exp(-1j*w0)];
% b=b0*conv(b1,b2);
% freqz(b,1,2001);
% fvtool(b,1);
% A1=1;B1=b;
% %-----------------------------subpart b
% figure()
% k=1;
% w0=pi/4;b0=1/1.0099;r0=0.99;
% b1= [1,-exp(1j*w0)];
% b2= [1,-exp(-1j*w0)];
% a1= [1,-r0*exp(1j*w0)];
% a2= [1,-r0*exp(-1j*w0)];
% b=b0*conv(b1,b2);
% a=conv(a1,a2);
% freqz(b,a,2001); 
% fvtool(b,a);
% A2=a;B2=b;
% %-----------------------------subpart c
% figure()
% k=1;
% for i=0:0.1:0.8
% w0=pi/4;b0=1/1.0099;r0=0.1+i;
% b1= [1,-exp(1j*w0)];
% b2= [1,-exp(-1j*w0)];
% a1= [1,-r0*exp(1j*w0)];
% a2= [1,-r0*exp(-1j*w0)];
% b=b0*conv(b1,b2);
% a=conv(a1,a2);
% [h,w]=freqz(b,a,2001); 
% subplot(9,2,k), plot(w,abs(h));x="Notch filter with zeros and poles, r="+r0;
% title(x);xlabel("radians");ylabel("Magnitude");
% subplot(9,2,k+1), plot(w,angle(h));xlabel("radians");ylabel("Phase");
% k=k+2;
% end
%-----------------------------subpart e
 a=load('handel');
 fs=8192;N=length(a.y);
 t=0:1/fs:N/fs-1/fs;
 f0=1024;
 z=(a.y)'+sin(2*pi*f0*t);
%  sound(a.y);
% %  pause(length(a.y)/8192);
% sound(z);
y1=filter(B1,A1,z);
%sound(y1);
y2=filter(B2,A2,z);
% sound(y2)
y1=y1(1:100);
y2=y2(1:100);
%-----------------------------subpart f
figure()
subplot(2,2,1) , plot(fft(z));xlim([0,99]);title("Input for filter 1");
subplot(2,2,2) , plot(z);xlim([0,99]);title("Input for filter 2");
subplot(2,2,3) , plot(0:99,fft(y1),'g');title("Output for filter 1");xlim([0,99]);
subplot(2,2,4) , plot(0:99,y2,'g');title("Output for filter 2");xlim([0,99]);