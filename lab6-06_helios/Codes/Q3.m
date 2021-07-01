w= -10:0.01:10;
%----------------------------------------------------------------------
%DTFT for delta function
x=1;N0=1;
h=DTFT(x,N0,w);
N0 = 3;
h=h-DTFT(x,N0,w);
figure(1);
subplot(2,2,1) ,plot(w,abs(h),'r'),title('magnitude for x[n]-x[n-2]')
subplot(2,2,2) ,plot(w,angle(h),'g'),title('Phase');

%----------------------------------------------------------------------
N0=2;x=[0,1,0];% d[n]
h=DTFT(x,N0,w);
N0 = 1;         %d[n-1]
h=h+DTFT(x,N0,w);
N0=3;           %d[n+1]
h=h+DTFT(x,N0,w);
h = h ./ 3;

figure(2);
subplot(2,2,1) ,plot(w,abs(h),'r'),title('magnitude for .33(x[n]+x[n-1]+x[n+1])')
subplot(2,2,2) ,plot(w,angle(h),'g'),title('Phase');

%----------------------------------------------------------------------
N0=2;x=[0,1,0];% d[n]
h=2*DTFT(x,N0,w);
N0 = 1;         %d[n-1]
h=h-DTFT(x,N0,w);
N0=3;           %d[n+1]
h=h-DTFT(x,N0,w);
h = h ./ 4;

figure(3);
subplot(2,2,1) ,plot(w,abs(h),'r'),title('magnitude for .25(2x[n]+x[n-1]+x[n+1])')
subplot(2,2,2) ,plot(w,angle(h),'g'),title('Phase');