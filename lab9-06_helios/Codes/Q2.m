N=51;
M=(N-1)/2;
x=[0:N-1];
Hd=sinc((x-M)/6)/6;
w=ones(N,1);
h=Hd.*w';
h=h';
%h(abs(h)< exp(-10))=0;
figure()
subplot (3,1,1) , stem(0:50,h,'r');title("Rectangular Window");
N=500;
Hw = fft(h,N);
Hw = fftshift(Hw);
xlabel("time");ylabel("h[n]");
subplot (3,1,2) , plot(-pi:2*pi/N:pi-(2*pi/N),20*log10(abs(normalize(Hw))),'g');
ylim([-100,0]);xlabel("w");ylabel("magnitude");
subplot (3,1,3) , plot(-pi:2*pi/N:pi-(2*pi/N),phase(Hw));
xlabel("w");ylabel("angle");
h1=h;
% % %-----------------------c
% N=51;
% M=(N-1)/2;
% x=[0:N-1];
% Hd=sinc((x-M)/6)/6;
% w=ones(N,1);
% h=Hd.*blackman(N)';
% h=h';
% h(abs(h)< exp(-10))=0;
% figure()
% subplot (3,1,1) , stem(0:50,h,'r');title("Blackman Window")
% 
% Hw = fft(h,500);
% N=500;
% Hw = fftshift(Hw);
% xlabel("time");ylabel("h[n]");
% subplot (3,1,2) , plot(-pi:2*pi/N:pi-(2*pi/N),20*log10(abs(normalize(Hw))),'g');
% ylim([-100,0]);xlabel("w");ylabel("magnitude");
% subplot (3,1,3) , plot(-pi:2*pi/N:pi-(2*pi/N),angle(Hw));
% xlabel("w");ylabel("angle");
% h2=h;
%------------------------------e1
% N=201;% input signal x[n]
% n=[0:N-1];
% x=cos(pi*n/16) + sin(pi*n/2)/4;
% %N=201;%
% M=(N-1)/2;
% Hd=sinc((n-M)/6)/6;
% w=ones(N,1);
% h=Hd.*w';
% h=h';
% y=conv(x,h);
% figure()
% subplot(1,2,1) , plot(n,x);ylim([-1.5,1.5]);title("input signal");ylim([-1.5,1.5])
% subplot(1,2,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title("input signal with rectangular filer window");ylim([-1.5,1.5]);
% %------------------------------e2
% n=(0:N-1);
% M=(N-1)/2;
% Hd=sinc((n-M)/6)/6;
% w=ones(N,1);
% h=Hd.*blackman(N)';
% y=conv(x,h');
% figure()
% subplot(1,2,1) , plot(n,x);ylim([-1.5,1.5]);title("input signal");ylim([-1.5,1.5]);
% subplot(1,2,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title("input signal with blackman filer window");
%------------------------------e3
% N=201;% input signal x[n]
% n=[0:N-1];
% z=randn(1,201);
% x=cos(pi*n/16) + z/4;
% %N=201;%
% M=(N-1)/2;
% Hd=sinc((n-M)/6)/6;
% w=ones(N,1);
% h=Hd.*w';
% h=h';
% y=conv(x,h);
% figure()
% subplot(1,2,1) , plot(n,x);ylim([-1.5,1.5]);title("input signal");ylim([-1.5,1.5])
% subplot(1,2,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title("input signal with rectangular filer window");ylim([-1.5,1.5]);
% %------------------------------e4
% n=(0:N-1);
% M=(N-1)/2;
% Hd=sinc((n-M)/6)/6;
% w=ones(N,1);
% h=Hd.*blackman(N)';
% y=conv(x,h');
% figure()
% subplot(1,2,1) , plot(n,x);ylim([-1.5,1.5]);title("input signal");ylim([-1.5,1.5]);
% subplot(1,2,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title("input signal with blackman filer window");
%-------------------------------f
N=51;
M=(N-1)/2;
x=[0:N-1];
Hd=zeros(1,N);
for i=x
Hd(i+1)=(-1)^(i)*sinc(pi*(i-M)/6)/6;
end
w=ones(N,1);
h=Hd.*w';
h=h';
h(abs(h)< exp(-10))=0;
figure()
subplot (3,1,1) , stem(0:50,h,'r');title("(-1)^n Rectangular Window");
N=500;
Hw = fft(h,N);
Hw = fftshift(Hw);
xlabel("time");ylabel("h[n]");
subplot (3,1,2) , plot(-pi:2*pi/N:pi-(2*pi/N),20*log10(abs(normalize(Hw))),'g');
ylim([-100,0]);xlabel("w");ylabel("magnitude");
subplot (3,1,3) , plot(-pi:2*pi/N:pi-(2*pi/N),angle(Hw));
xlabel("w");ylabel("angle");
h1=h;