ts=[0.5,0.2,0.1,0.05];
for i=1:4
t_samples = -1:ts(i):1;
t_fine= -10:0.001:10;
x= 1-abs(t_samples);
n=-(length(t_samples)/2-0.5):length(t_samples)/2-0.5;
subplot(2,2,i),plot(t_fine,sinc_interp(n,x,ts(i),t_fine));
 hold on;
 stem(t_samples,x);hold off;
 legend("reconstructed","original");
end
%plot(t_fine)
