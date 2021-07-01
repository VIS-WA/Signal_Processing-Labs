fs=10000;   
td=1;
N=5;
for i=1:5
    A(i)=1/i;
    P(i)=0;
end
f0=50;
x=harmonics(A,f0,P,td,fs);
soundsc(x);
pause(2);
%----2_2------
fs=10000;
td=1;
f0=50;
for i=1:5
    j=i*i;
    A(i)=1/j;
    P(i)=0;
end
x=harmonics(A,f0,P,td,fs);
soundsc(x);
pause(4);
%---2_3-----
f0=100;
x=harmonics(A,f0,P,td,fs);
soundsc(x);
f0=150;
x=harmonics(A,f0,P,td,fs);
soundsc(x);
pause(4);
f0=200;
x=harmonics(A,f0,P,td,fs);
soundsc(x);
pause(2);
%-----2_4,2_5-----
for i=1:N
    A(i)=sin(pi*i/N);
end
x=harmonics(A,f0,P,td,fs);
soundsc(x);
pause(2);
g=1:500;
for i=1:500
    x1(i)=x(i);
end
subplot(3,1,1)
plot(g,x1);
for i=1:N
    A(i)=cos(pi*i/N);
end
x=harmonics(A,f0,P,td,fs);
soundsc(x);
pause(2);
for i=1:500
    x1(i)=x(i);
end
subplot(3,1,2)
plot(g,x1);
for i=1:N
    A(i)=i;
end
x=harmonics(A,f0,P,td,fs);
soundsc(x);
pause(2);
for i=1:500
    x1(i)=x(i);
end
subplot(3,1,3)
plot(g,x1);
%-------2_f-----------------------------------------------------
fs=10000;
td=1;
N=5;
for i=1:5
    A(i)=1/i;
   
end
 P=2*pi*rand(1,N);
f0=50;
x=harmonics(A,f0,P,td,fs);
soundsc(x);






