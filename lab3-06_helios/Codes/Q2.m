Ts=0.1;
t_fine=0:0.001:2;
t_samples=0:Ts:2;
xt=sin(5*pi*t_samples)+cos(10*pi*t_samples);
zt=sin(5*pi*t_fine)+cos(10*pi*t_fine);
n=0:length(t_samples)-1;

subplot(2,2,1) , stem(t_samples,xt);
hold on;
 plot(t_fine,zt);hold off;
 legend("reconstructed","original");
 
at=interp1(t_samples,xt,t_fine,'previous');
subplot(2,2,2),plot(t_fine,at);
hold on;
 plot(t_fine,zt);hold off;
 legend("reconstructed","original");
 
bt=interp1(t_samples,xt,t_fine);
subplot(2,2,3),plot(t_fine,bt);
hold on;
 plot(t_fine,zt);hold off;
 legend("reconstructed","original");
 
ct=sinc_interp(n,xt,Ts,t_fine);
subplot(2,2,4), plot(t_fine,ct);
hold on;
 plot(t_fine,zt);hold off;
 legend("reconstructed","original");


mae=zeros(3,1);
for j=1:length(t_fine)
    if t_fine(j)>=0.5 && t_fine(j)<=1.5
        mae(1)=max(mae(1),abs(zt(j)-at(j)));
        mae(2)=max(mae(2),abs(zt(j)-bt(j)));
        mae(3)=max(mae(3),abs(zt(j)-ct(j)));
    end
end
mae