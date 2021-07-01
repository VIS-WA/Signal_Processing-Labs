w=-5:0.1:5;
syms t;
xt=sin(t);
X=continuousFT(xt,t,-pi,pi,w);
subplot(2,2,1);
plot(w,real(X));
subplot(2,2,2);
imag(X)
plot(w,imag(X));
subplot(2,2,3);
plot(w,abs(X));
subplot(2,2,4);
plot(w,angle(X));