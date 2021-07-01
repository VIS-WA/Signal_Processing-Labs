%-----------Required parameters
Tm=[0,2/3,-2/3];Tm1=[0,1/8,-3/4];
s=[3,4,5;4,3,5;3,5,4;5,3,4;4,5,3;5,4,3];q=[4,4,4];
x=-1:0.01:1;
y=x;
w=zeros(3,length(x)*length(y));%plots for gamma=z i.e average noise power

% %------------fixing step size and finding optimal time delays
%z= @(x,y) 1/(12*64*mini([4,4,4],[0,x,y]));ezsurfc(z) ;xlim([-1 1]);ylim([-1,1]); %expression includes value of \sigma^2
% k=1;%counter
% for a=x
%     for b=y
%         w(1,k)= 1/mini([4,4,4],[0,a,b]);
%         w(2,k)=a;w(3,k)=b;
%         k=k+1;
%     end
% end
% w=w';
% w=sortrows(w,'descend'); descending sort along and corresponding cell replacement

% t1=w(1,2) %t1 value
% t2=w(1,3) %t2 value
% compass([4,4*cos(t1*pi),4*cos(t2*pi)],[0,4*sin(t1*pi),4*sin(t2*pi)]);
% %------------ratio of average power for different time delays
% a=100 * (mini([4,4,4],Tm1) - mini([4,4,4],Tm))/ mini([4,4,4],Tm)

%------------finding optimal step size for given delays 
% for i=[1:6]
% z = round(mini(q,Tm1)/ mini(s(i,:),Tm1), 2) %rounding off to 2 decimals
% figure()
% compass([s(i,1),s(i,2)*cos(Tm1(2)*pi),s(i,3)*cos(Tm1(3)*pi)],[0,s(i,2)*sin(Tm1(2)*pi),s(i,3)*sin(Tm1(3)*pi)]);
% end

% %------------different step sizes and optimising time delays
%  figure()
%   z= @(x,y) mini([3,4,4],Tm)/(mini([3,4,4],[0,x,y]));ezsurfc(z) ;xlim([-1 1]);ylim([-1,1]);
% k=1;%counter
% for a=x
%     for b=y
%         w(1,k)= 1/mini([3,4,4],[0,a,b]);
%         w(2,k)=a;w(3,k)=b;
%         k=k+1;
%     end
% end
% w=w';
% w=sortrows(w,'descend');
% t1=w(1,2) %t1 value
% t2=w(1,3) %t2 value
% figure()
% compass([3,4*cos(t1*pi),4*cos(t2*pi)],[0,4*sin(t1*pi),4*sin(t2*pi)]);

