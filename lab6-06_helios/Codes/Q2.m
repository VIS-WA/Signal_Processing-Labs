Xw=1;
wc=pi/16;
syms w;
N=100;
Xn=zeros(2*N+1,1);
n=-30:30;
expr=Xw*exp(1i*w*n);
Xn=1/(2*pi)*(int(expr,w,-wc,wc));
figure();
subplot(3,2,1)
plot(n,Xn);
%-----wc=pi/8------------------
wc=pi/8;
Xn1=zeros(2*N+1,1);
  
expr=Xw*exp(1i*w*n);
Xn1=1/(2*pi)*(int(expr,w,-wc,wc));
subplot(3,2,2)
plot(n,Xn1);
%---------wc=pi/4----------------
wc=pi/4;
Xn2=zeros(2*N+1,1);

expr=Xw*exp(1i*w*n);
Xn2=1/(2*pi)*(int(expr,w,-wc,wc));
subplot(3,2,3)
plot(n,Xn2);
%----------------wc=pi/2-----------------
wc=pi/2;
Xn3=zeros(2*N+1,1);
expr=Xw*exp(1i*w*n);
Xn3=1/(2*pi)*(int(expr,w,-wc,wc));
subplot(3,2,4)
plot(n,Xn3);
%--------wc=pi----------------------------
wc=pi;
Xn4=zeros(2*N+1,1);
expr=Xw*exp(1i*w*n);
Xn4=1/(2*pi)*(int(expr,w,-wc,wc));
subplot(3,2,5)
plot(n,Xn4);
title('wc=pi');
%-----------------------q2_C--------------
Xw=1;
w1=pi/8;
w2=pi/4;
syms w;
%Xn=zeros(2*N+1,1);
 n=-30:30; 
expr=Xw*exp(1i*w*n);
Xn=1/(2*pi)*(int(expr,w,w1,w2)+int(expr,w,-w1,-w2));
figure();
subplot(2,2,1)
plot(n,real(Xn));
title("realpart of X[n] w1=pi/8,w2=pi/4");
subplot(2,2,2)
plot(n,imag(Xn))
title("imaginary of X[n] w1=pi/8,w2=pi/4");
%-----------------w1=pi/2,w2=pi---------------------
w1=pi/2;
w2=pi;
Xn1=zeros(2*N+1,1);  
expr=Xw*exp(1i*w*n);
Xn1=1/(2*pi)*(int(expr,w,w1,w2)+int(expr,w,-w1,-w2));
subplot(2,2,3)
plot(n,real(Xn1));
title('realpart of X[n] w1=pi/2,w2=pi');
subplot(2,2,4)
plot(n,imag(Xn1));
title("imaginarypart of X[n] w1=pi/2,w2=pi");



