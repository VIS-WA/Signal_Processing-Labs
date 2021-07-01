function B = NonIdeal(A,F,G,a)

N=length(A)/2-0.5;
for i=-N:N
    k=i+N+1;
    B(k)=A(k)*G/(a+F(k)*j);
end
