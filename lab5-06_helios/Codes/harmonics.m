function xt = harmonics(A, f0, P, td, fs)
N=length(A);
F=f0:f0:N*f0;
xt = SumOfSines(A,F,P,td,fs);
end

