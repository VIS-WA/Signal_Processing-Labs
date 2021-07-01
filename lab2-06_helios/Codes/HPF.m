function B = HPF(A,F,wc)

N=length(A)/2-0.5;
for i=-N:N
    k=i+N+1;
    if F(k)<wc&&F(k)>-wc B(k)=0;
    else B(k)=A(k);
    end
end
