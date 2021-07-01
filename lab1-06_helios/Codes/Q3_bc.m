N=input("Enter N: ");T=input("enter T: ");syms t;
xt=t/abs(t);a=-.1;b=.1;
%fplot(xt);
F=fouriercoeff(N,T,t,xt,a,b);
tt=-0.5:0.01:0.5;

plot(tt,partialfouriersum(F,1,tt));

%stem(-N:N,F);xlabel("Time");
ylabel("Reconstructed signal");
xlabel("Time");
%grid on;

