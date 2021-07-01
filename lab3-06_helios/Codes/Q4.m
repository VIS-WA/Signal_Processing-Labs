ts=[0.1,0.2,0.3,0.4];
for i=1:4
t_samples = 0:ts(i):2;
t_fine= 0:0.001:2;
x= sin(5*pi*t_samples);
n=0:length(t_samples)-1;
subplot(2,2,i),plot(t_fine,sinc_interp(n,x,ts(i),t_fine));
 hold on;
 stem(t_samples,x);hold off;
 legend("reconstructed","sampled");
 
end
