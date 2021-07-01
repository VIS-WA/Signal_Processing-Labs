function A=fourierscript (N)
% T=input("enter T");
% 
% a=input("enter a");
% b=input("enter b");
N=10;
T=1;
a=-1/4;
b=1/4;


syms t;
xt=t;
F=fouriercoeff(N,T,t,xt,a,b);
A=F';
FS_idx=-N:N;
 figure;
 grid on;
 stem(FS_idx,imag(F));