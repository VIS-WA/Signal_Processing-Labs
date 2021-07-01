b=[1];%coefficients of numerator
a=[1,-0.5,0.2,-0.1,0.007,0.14,0.15];%coefficients of denominator
[h,w]=freqz(b,a,'whole',1001);
figure();polar(w,abs(h),'r');
figure()
subplot(2,1,1);
plot(w,abs(h),'g');
title("DTFT magnitude");xlabel("Angle");ylabel("Magnitude")
subplot(2,1,2);
zplane(b,a);
title("pole-zero");