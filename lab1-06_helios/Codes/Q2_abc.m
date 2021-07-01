

T=1;t=-0.5:0.01:0.5;
z=zeros(size(t));
A=fourierscript(10);
for q=1:length(t)
if abs(t(q))<=0.25 z(q)=1/4-abs(t(q));%original function
end
end
y=partialfouriersum(A,T,t)
plot(t,y,'r') % reconstrcuted function
xlabel("time");
ylabel("Function");
hold on
plot(t,z,'b');%original function
hold off
legend("reconstrcuted","original");

k=0;m=0; %maximum absolute difference and mean squared error
for q=1:length(t)
  po=abs(z(q)-y(q)); 
  k=max(k,po);
  m = m + po^2;
end
k
m/length(t)