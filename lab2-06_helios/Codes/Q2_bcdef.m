T = 2*pi;
syms t;
A=fouriercoeff(1,T,t,cos(t),-2*pi,2*pi);%[0.5,0,0.5];
t = -2*T:0.01:2*T;
x=partialfouriersum(A,T,t);
subplot(2,2,1) ,plot(t,x);
xlabel("Time");
ylabel("Cos(t)");

%----------------------------------------------------
wo=2*pi/T;N=length(A)/2-0.5;
for i=-N:N
    F(i+N+1)=i*wo;
end;

%----------------------------------------------------

wc=2;
B=LPF(A,F,wc);
x=partialfouriersum(B,T,t);
subplot(2,2,2) ,plot(t,x,'r');
xlabel("Time");
ylabel("Cos(t)");


wc=0.5;
B=LPF(A,F,wc);
x=partialfouriersum(B,T,t);
%subplot(2,2,3) ,plot(t,x,'g');
%xlabel("Time");
%ylabel("Cos(t)");

%----------------------------------------------------

wc=2; % cut-off frequency = 2
B=HPF(A,F,wc);
x=partialfouriersum(B,T,t);
subplot(2,2,3) ,plot(t,x,'r');
xlabel("Time");
ylabel("Cos(t)");
hold on;
x=partialfouriersum(A,T,t);
subplot(2,2,3) ,plot(t,x,'b');
hold off;

wc=0.5; %cut-off frequency = 0.5
B=HPF(A,F,wc);
x=partialfouriersum(B,T,t);
% plot(t,x,'r');
% xlabel("Time");
% ylabel("Cos(t)");
% hold on;
% x=partialfouriersum(A,T,t);
% plot(t,x,'b');
% hold off;

%----------------------------------------------------

G=1;a=1;
B=NonIdeal(A,F,G,a);
x=partialfouriersum(B,T,t);
subplot(2,2,4) ,plot(t,x,'r');
xlabel("Time");
ylabel("Cos(t)");





