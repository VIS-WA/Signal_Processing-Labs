function xr = sinc_interp(n,xn,ts,t_fine)
wc=pi/ts;
xr=zeros(length(t_fine),1);
for j=1:length(t_fine)
for i=1:length(n)
xr(j)=xr(j)+ts*xn(i)*wc/pi*sinc(wc/pi*(t_fine(j)-n(i)*ts));
end
end
end

