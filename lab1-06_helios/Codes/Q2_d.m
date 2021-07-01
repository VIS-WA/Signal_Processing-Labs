 k=zeros(1,25);m=zeros(1,25); %maximum absolute difference and mean squared error
for qq=1:25
    A=fourierscript(qq);
    T=1;t=-0.5:0.1:0.5;
    z=zeros(size(t));
    for q=1:length(t)
        if abs(t(q))<=0.25 z(q)=1/4-abs(t(q));%original function
        end
    end
    y=partialfouriersum(A,T,t);
    
   
    for q=1:length(t)
        po=abs(z(q)-y(q));
        k(qq)=max(k(qq),po);
        m(qq) = m(qq) + (po^2)/length(t);
    end
  
end
qq=1:2:50;
plot(qq,k,'b'); 
plot(qq,m,'r');