w=-5:0.1:5;
syms t;
xt=cos(t);
X=continuousFT(xt,t,-1*pi,pi,w);
M=-5:0.1:5;
subplot(2,2,1);
plot(M,real(X));
subplot(2,2,2);
plot(M,imag(X));
subplot(2,2,3);
plot(M,abs(X));
subplot(2,2,4);
plot(M,angle(X));