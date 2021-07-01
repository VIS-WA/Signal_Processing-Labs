w= -10:0.01:10;
%--------------------------------------
%DTFT for delta function
x=1;N0=1;
X=DTFT(x,N0,w);
figure(1);
subplot(2,2,1) ,plot(w,abs(X)),title('magnitude for delta');xlabel('w');ylabel('Function value');
subplot(2,2,2) ,plot(w,angle(X)),title('Phase');xlabel('w');ylabel('Function value');
subplot(2,2,3) ,plot(w,real(X)),title('Real part');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,imag(X)),title('Imag part');xlabel('w');ylabel('Function value');

%--------------------------------------
%DTFT for shifted delta
x=1;N0=6;
X=DTFT(x,N0,w);
figure(2);
subplot(2,2,1) ,plot(w,abs(X),'r'),title('magnitude for shifted delta');xlabel('w');ylabel('Function value');
subplot(2,2,2) ,plot(w,angle(X),'r'),title('Phase');xlabel('w');ylabel('Function value');
subplot(2,2,3) ,plot(w,real(X),'r'),title('Real part');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,imag(X),'r'),title('Imag part');xlabel('w');ylabel('Function value');

%--------------------------------------
%DTFT for rectangular pulse from -5 to 5
x=ones(1,11);N0=6;
X=DTFT(x,N0,w);
figure(3);
subplot(2,2,1) ,plot(w,abs(X),'y'),title('magnitude for rectangular pulse');xlabel('w');ylabel('Function value');
subplot(2,2,2) ,plot(w,angle(X),'y'),title('Phase');xlabel('w');ylabel('Function value');
subplot(2,2,3) ,plot(w,real(X),'y'),title('Real part');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,imag(X),'y'),title('Imag part');xlabel('w');ylabel('Function value');

%--------------------------------------
%DTFT for rectangular pulse from 0 to 10
x=ones(1,11);N0=1;
X=DTFT(x,N0,w);
figure(4);
subplot(2,2,1) ,plot(w,abs(X),'m'),title('magnitude for rectangular pulse');xlabel('w');ylabel('Function value');
subplot(2,2,2) ,plot(w,angle(X),'m'),title('Phase');xlabel('w');ylabel('Function value');
subplot(2,2,3) ,plot(w,real(X),'m'),title('Real part');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,imag(X),'m'),title('Imag part');xlabel('w');ylabel('Function value');

%--------------------------------------
%DTFT for sinusoid 
n=-500:500;
x=sin(n*pi/3);N0=501;
X=DTFT(x,N0,w);
figure(5);
subplot(2,2,1) ,plot(w,abs(X),'c'),title('magnitude for Sinusoid');xlabel('w');ylabel('Function value');
subplot(2,2,2) ,plot(w,angle(X),'c'),title('Phase');xlabel('w');ylabel('Function value');
subplot(2,2,3) ,plot(w,real(X),'c'),title('Real part');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,imag(X),'c'),title('Imag part');xlabel('w');ylabel('Function value');
%--------------------------------------
%subpart c,where b = 0.1
n=0:500;b = 0.1;
x=b.^(n);
w=-10:0.01:10;
figure();
subplot(2,2,1) ,plot(n,x,'r'),title('Discrete Function for a=b=0.1');xlabel('n');ylabel('Function value');
subplot(2,2,3) ,plot(w,DTFT(x,1,w),'r'),title('DTFT');xlabel('w');ylabel('Function value');

a = -b;
x=a.^(n);
subplot(2,2,2) ,plot(n,x,'g'),title('a= -b'),title('Discrete Function for a= -b');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,DTFT(x,1,w),'g');xlabel('w');ylabel('Function value');

%--------------------------------------
%subpart c,where b = 0.1
n=0:500;b = 0.5;
x=b.^(n);
w=-10:0.01:10;
figure();
subplot(2,2,1) ,plot(n,x,'r'),title('Discrete Function for a=b=0.5');xlabel('w');ylabel('Function value');
subplot(2,2,3) ,plot(w,DTFT(x,1,w),'r'),title('DTFT');xlabel('w');ylabel('Function value');

a = -b;
x=a.^(n);
subplot(2,2,2) ,plot(n,x,'g'),title('a=-b');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,DTFT(x,1,w),'g');xlabel('w');ylabel('Function value');

%--------------------------------------
%subpart c,where b = 0.1
n=0:500;b = 0.9;
x=b.^(n);
w=-10:0.01:10;
figure();
subplot(2,2,1) ,plot(n,x,'r'),title('Discrete Function for a=b=0.9');xlabel('w');ylabel('Function value');
subplot(2,2,3) ,plot(w,DTFT(x,1,w),'r'),title('DTFT');xlabel('w');ylabel('Function value');

a = -b;
x=a.^(n);
subplot(2,2,2) ,plot(n,x,'g'),title('a=-b');xlabel('w');ylabel('Function value');
subplot(2,2,4) ,plot(w,DTFT(x,1,w),'g'),title('DTFT');xlabel('w');ylabel('Function value');
