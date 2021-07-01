f=10;Fs=5000;a=-1;b=1;
t=a:1/Fs:b;
x=sin(2*pi*f*t);
figure(1);
subplot(3,1,1) , plot(t,x);
ylabel("Sampled signal");xlabel("Time");
u=zeros(8,1);v=zeros(8,1);

for i=1:8
    y=quant(x,2^i,a,b); % quantized function
    subplot(3,1,2) , plot(t,y);
    hold on;
    ylabel("quantised signal");xlabel("Time");
    z=x-y; % quantised error
    u(i)=max(max(z),abs(min(z)));
    v(i)=sum(a.*a)/sum(z.*z);
    subplot(3,1,3) , plot(t,z);
    hold on;
    ylabel("quantization error");xlabel("Time");
end
hold off;
for i=1:8
    l(i)="L="+2^i;
end
%ylabel("quantised signal");xlabel("Time");
legend(l); %
hold off;
legend(l);

%----------------------
figure(2);
plot (1:8,u,'o--');
xlabel("No.of bits");
ylabel("maximum absolute quantization error");
%----------------------
figure(3);
plot (1:8,v,'ro--');
xlabel("No. of bits");
ylabel("SQNR");