fs=10000;%setting up all relavent parameters
%td=0:1/fs:1;
td=1;
t=0:1/fs:td;
f0=50;N=5;
A=1 ./ (1:N);
P=zeros(size(A));
%--------------------------------------plotting a harmonic signal and its
%envelop
figure(1);
xt = harmonics(A, f0, P, td, fs);
subplot(3,1,1),plot(t,xt,'r');
hold on;xlabel("time");ylabel("Sound signal");hold off;

[a,env]=envelope(0.2,0.2,0.7,0.4,0.2,fs);
subplot(3,1,2),plot(t,env,'g');
hold on;xlabel("time");ylabel("Envelope");hold off;

subplot(3,1,3),plot(t,xt.*env,'b');
hold on;xlabel("time");ylabel("Enveloped Sound signal");hold off;

soundsc(xt,fs);%audio of the signals.
pause (1);soundsc(xt.*env,fs);pause(1);
%--------------------------------------changing the values of asdr vector
figure(2);
xt = harmonics(A, f0, P, td, fs);
subplot(3,1,1),plot(t,xt,'r');
hold on;xlabel("time");ylabel("Sound signal");hold off;

[a,env]=envelope(0.3,0.3,0.4,0.2,0.2,fs);
subplot(3,1,2),plot(t,env,'g');
hold on;xlabel("time");ylabel("Envelope");hold off;

subplot(3,1,3),plot(t,xt.*env,'b');
hold on;xlabel("time");ylabel("Enveloped Sound signal");hold off;
soundsc(xt,fs);%audio of the signals.
pause (1);soundsc(xt.*env,fs)
