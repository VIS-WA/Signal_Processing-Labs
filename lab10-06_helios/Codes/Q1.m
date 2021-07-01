fs=10000;
fc=2000;
Rp=1;
Rs=40;
n=6;
[b1,a1]=butter(n,fc/(fs/2));
[h1,w1]=freqz(b1,a1,2001);
[g1,t1]=impz(b1,a1,100);

[b2,a2]=cheby1(n,Rp,fc/(fs/2));
[h2,w2]=freqz(b2,a2,2001);
[g2,t2]=impz(b2,a2,100);

[b3,a3]=cheby2(n,Rs,fc/(fs/2));
[h3,w3]=freqz(b3,a3,2001);
[g3,t3]=impz(b3,a3,100);

[b4,a4]=ellip(n,Rp,Rs,fc/(fs/2));
[h4,w4]=freqz(b4,a4,2001);
[g4,t4]=impz(b4,a4,100);

subplot(2,2,1)
plot(w1/pi,20*log10(abs(h1)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title(" Butterworth filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

subplot(2,2,2)
plot(w2/pi,20*log10(abs(h2)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title("cheby1 filter")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

subplot(2,2,3)
plot(w3/pi,20*log10(abs(h3)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title("cheby2 filter")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

subplot(2,2,4)
plot(w4/pi,20*log10(abs(h4)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title("elliptic filter")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

figure();
subplot(2,2,1)
plot(w1/pi,angle(h1))
ax = gca;
ax.XTick = 0:.2:2;
title(" Butterworth filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

subplot(2,2,2)
plot(w2/pi,angle(h2))
ax = gca;
ax.XTick = 0:.2:2;
title(" cheby1 filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

subplot(2,2,3)
plot(w3/pi,angle(h3))
ax = gca;
ax.XTick = 0:.2:2;
title(" cheby2 filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

subplot(2,2,4)
plot(w4/pi,angle(h4))
ax = gca;
ax.XTick = 0:.2:2;
title(" elliptic filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')
%-------------n=12------------------------------------------------------
n=12;
[b,a]=butter(n,fc/(fs/2));
[h1,w1]=freqz(b,a,2001);

[b,a]=cheby1(n,Rp,fc/(fs/2));
[h2,w2]=freqz(b,a,2001);

[b,a]=cheby2(n,Rs,fc/(fs/2));
[h3,w3]=freqz(b,a,2001);

[b,a]=ellip(n,Rp,Rs,fc/(fs/2));
[h4,w4]=freqz(b,a,2001);
figure();
subplot(2,2,1)
plot(w1/pi,20*log10(abs(h1)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title(" Butterworth filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

subplot(2,2,2)
plot(w2/pi,20*log10(abs(h2)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title(" cheby1 filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

subplot(2,2,3)
plot(w3/pi,20*log10(abs(h3)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title(" cheby2 filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

subplot(2,2,4)
plot(w4/pi,20*log10(abs(h4)))
ax = gca;
ax.YLim = [-100 20];
ax.XTick = 0:.2:2;
title(" elliptic filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')

figure();
subplot(2,2,1)
plot(w1/pi,angle(h1))
ax = gca;
ax.XTick = 0:.2:2;
title(" Butterworth filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

subplot(2,2,2)
plot(w2/pi,angle(h2))
ax = gca;
ax.XTick = 0:.2:2;
title(" cheby1 filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

subplot(2,2,3)
plot(w3/pi,angle(h3))
ax = gca;
ax.XTick = 0:.2:2;
title(" cheby2 filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

subplot(2,2,4)
plot(w4/pi,angle(h4))
ax = gca;
ax.XTick = 0:.2:2;
title(" elliptic filter ")
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')
%----------------------Impz-----------------------------
figure()
subplot(2,2,1)
stem(t1,g1);
title(" Impulse response Butterworth filter ")
xlabel('Samples')
ylabel('magnitude')
ylim([-0.5,0.5])

subplot(2,2,2)
stem(t2,g2);
title(" Impulse response cheby1 filter ")
xlabel('Samples')
ylabel('magnitude')
ylim([-0.5,0.5])

subplot(2,2,3)
stem(t3,g3);
title(" Impulse response cheby2 filter ")
xlabel('Samples')
ylabel('magnitude')
ylim([-0.5,0.5])

subplot(2,2,4)
stem(t4,g4);
title(" Impulse response elliptic filter ")
xlabel('Samples')
ylabel('magnitude')
ylim([-0.5,0.5])
%-----------------------------  f part    --------------------------------------------
n=0:1/fs:1-1/fs;
xn=sin(2*pi*500*n)+sin(2*pi*3000*n);
y1=filter(b1,a1,xn);
figure()
subplot(4,2,1)
plot(xn);
title(" Inputsignal ")
xlabel('samples')
ylabel('xn')
xlim([0 100])

subplot(4,2,2)
plot(y1);
title("Butterworth filter ")
xlabel('Samples')
ylabel('filtered signal')
ylim([-2 2])
yticks([-2:1:2])
xlim([0 100])

subplot(4,2,3)
plot(xn);
title(" Inputsignal ")
xlabel('samples')
ylabel('xn')
xlim([0 100])

y2=filter(b2,a2,xn);
subplot(4,2,4)
plot(y2);
title("  cheby1 filter ")
xlabel('Samples')
ylabel('Filtered signal')
ylim([-2 2])
yticks([-2:1:2])
xlim([0 100])

subplot(4,2,5)
plot(xn);
title(" Inputsignal ")
xlabel('samples')
ylabel('xn')
xlim([0 100])

subplot(4,2,6)
y3=filter(b3,a3,xn);
plot(y3);
title(" cheby2 filter ")
xlabel('Samples')
ylabel('Filtered signal')
ylim([-2 2])
yticks([-2:1:2])
xlim([0 100])

subplot(4,2,7)
plot(xn);
title(" Inputsignal ")
xlabel('samples')
ylabel('xn')
xlim([0 100])
y4=filter(b4,a4,xn);

subplot(4,2,8)
plot(y4);
title(" elliptic filter ")
xlabel('Samples')
ylabel('FIltered signal')
ylim([-2 2])
yticks([-2:1:2])
xlim([0 100])