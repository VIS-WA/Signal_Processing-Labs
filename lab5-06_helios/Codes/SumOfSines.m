function xt =SumOfSines(A,F,P,td,fs)

N=length(A);
t=0:1/fs:td;
xt=zeros(size(t));
for i=1:N
    xt=xt+A(i)*sin(2*pi*F(i)*t + P(i));
end
end
