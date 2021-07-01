function y = quant(x,L,a,b)
y=zeros(size(x));
n=1:L;
qp = a+(b-a)*(2*n-1)/(2*L) ;% final mappings
for i=1:length(x)
    m=b-a;c=1;
    for j=1:length(qp)
        if abs(x(i)-qp(j))<m
            c=j;m=abs(x(i)-qp(j));
        end
    end
    y(i)=qp(c);
end
end
