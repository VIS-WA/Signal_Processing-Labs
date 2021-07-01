function F=fouriercoeff(N,T,t,xt,a,b)

w0=2*(pi)/T;
F=zeros(2*N+1,1);
FS_idx=-N:N;
for nn=-N:N
    expr=xt*exp(-1i*nn*w0*t);
    F(nn+1+N)=(1/T)*(int(expr,t,a,b));
end