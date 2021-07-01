%-------------------subpart a
% R=[0.1,0.5,0.9];T=[0,pi/4,pi/2,3*pi/4,pi];
% for i=[1:4]
%     for j=[1:3]
%         t=T(i);r=R(j);
%         a=[1,-2*r*cos(t),r*r];
%         b=[1,-2*cos(t),1];
%         figure()
%         zplane(b,a);
%         title(["Angle=",t,"R=",r]);
%     end
% end
%---------------------b
% r=0.95;
% for t=[0:pi/4:pi] 
% a=[1,-2*r*cos(t),r*r];
% b=[1,-2*cos(t),1];
% [m,n]=freqz(b,a,360);
% figure();polar(n,m);
% title(["Angle=",t]);
% end
%----------------------subpart c
t=pi/3;
for r=[0:0.1:0.9] 
a=[1,-2*r*cos(t),r*r];
b=[1,-2*cos(t),1];
[m,n]=freqz(b,a,360);
figure();plot(n,(m));
title(["R=",r]);
end
