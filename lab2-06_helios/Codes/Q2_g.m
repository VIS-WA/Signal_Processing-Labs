T = 2*pi;
syms t;
A=fouriercoeff(10,T,t,sin(2*t)+cos(3*t),-pi,pi);
t = -2*T:0.01:2*T;
x=partialfouriersum(A,T,t);
subplot(2,2,1) ,plot(t,x);
xlabel("Time");
ylabel("sin(2t)+cos(3t)");

%----------------------------------------------------
wo=2*pi/T;N=length(A)/2-0.5;
for i=-N:N
    F(i+N+1)=i*wo;
end;

%----------------------------------------------------

wc=2.5;
B=LPF(A,F,wc);
x=partialfouriersum(B,T,t);
subplot(2,2,2) ,plot(t,x,'r');
xlabel("Time");
ylabel("sin(2t)+cos(3t)");

%----------------------------------------------------

wc=2.5; % cut-off frequency = 2.5
B=HPF(A,F,wc);
x=partialfouriersum(B,T,t);
subplot(2,2,3) ,plot(t,x,'r');
xlabel("Time");
ylabel("sin(2t)+cos(3t)");
hold on;
x=partialfouriersum(A,T,t);
subplot(2,2,3) ,plot(t,x,'b');
hold off;

%----------------------------------------------------

G=1;a=1;
B=NonIdeal(A,F,G,a);
x=partialfouriersum(B,T,t);
subplot(2,2,4) ,plot(t,x,'r');
xlabel("Time");
ylabel("sin(2t)+cos(3t)");





