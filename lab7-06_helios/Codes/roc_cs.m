function [N,ROC,C,S] = roc_cs(p)
p=unique(abs(p));%keep only unique numbers
N=0;
if p(1)~=0%add 0 before if not present
    p=[0,p];
end

N=N+length(p);%Number of ROCs
C=zeros(N,1);
S=C;
ROC=zeros(N,2);
for i=[1:N-1]
    ROC(i,1)=p(i);
    ROC(i,2)=p(i+1);
    if p(i)<1 && p(1+i)>1%condition to check if |z|=1 is present or not
        S(i)=1;
    end
    
end
ROC(N,1)=p(length(p));%last ROC containing inf is set here
ROC(N,2)="inf";
C(N)=1;
if ROC(N,1)<1
    S(N)=1;
end


