L=5;
% 
% N=5;
% x = [ones(L,1);zeros(N-L,1)];
% a=directdft(x);
% %a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("time domain signal,N=5");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
% %----------------------------
% N=10;
% x = [ones(L,1);zeros(N-L,1)];
% a=directdft(x);
% a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("time domain signal,N=10");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
% %----------------------------
% N=100;1`
% x = [ones(L,1);zeros(N-L,1)];
% a=directdft(x);
% a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("time domain signal,N=100");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
% % %--------------------------------------------------------------------------
% w0 = 3*pi/10; N = 1:20;
% x= sin(w0*N);
% a=directdft(x);
% a(abs(a)< exp(-10))=0 ;%to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("sinw0*N");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
%----------------------------
% w0 = 3*pi/10; N = 1:20;
% x= sin(w0*(N-1));
% a=directdft(x);
% a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("sinw0*N-1");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
% %----------------------------
% w0 = 3*pi/10; N = 1:20;
% x= cos(w0*N);
% a=directdft(x);
% a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("cosw0*N");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
% %----------------------------
% w0 = 3*pi/10; N = 1:20;
% x= cos(w0*(N-2));
% a=directdft(x);
% a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("cosw0*N-1");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
%----------------------------
w0 = 3*pi/10; N = 0:19;
x= exp(1i*w0*N);
a=directdft(x);
a(abs(a)< exp(-10))=0; %to set very less values to zero
figure()
subplot(3,1,1) , plot([0:length(x)-1],x);title("e^(w0*N)");xlabel("Time (n)");ylabel("x[n]");
subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
%----------------------------
w0 = 3*pi/10; N = 0:19;
x= exp(1i*w0*(N-3));
a=directdft(x);
a(abs(a)< exp(-10))=0; %to set very less values to zero
figure()
subplot(3,1,1) , plot([0:length(x)-1],x);title("e^(w0*N-3)");xlabel("Time (n)");ylabel("x[n]");
subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
% %----------------------------
% N = 10;
% x= [1; zeros(N-1,1)];
% a=directdft(x);
% a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("[1,000...]");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
% %----------------------------
% N = 0:19;
% x= (0.9).^(N);
% a=directdft(x);
% a(abs(a)< exp(-10))=0; %to set very less values to zero
% figure()
% subplot(3,1,1) , plot([0:length(x)-1],x);title("0.9^n");xlabel("Time (n)");ylabel("x[n]");
% subplot(3,1,2) , plot([0:length(a)-1],abs(a),'r');title("Magnitude of DFT");xlabel("Freq (k)");ylabel("|X[k]|");
% subplot(3,1,3) , plot([0:length(a)-1],angle(a),'g');title("Phase of DFT");xlabel("Freq (k)");ylabel("/_ X[k]");
%----------------------------check function
figure()
subplot(3,1,1) , plot([0:length(x)-1],x);title("Input signal")
an=fft(x,length(x));
an(abs(an)< exp(-10))=0;
subplot(3,1,2),plot([0:length(an)-1],abs(an));title("FFT magnitude")
subplot(3,1,3),plot([0:length(an)-1],angle((an)));title("FFT angle")
%an(an<exp(-10))=0
