function y = partialfouriersum (A,T,t)% Compute N based on the length of a
y = zeros(size(t));
z=0;
N=length(A)/2-0.5;
for ii = 1:length(t)
for k=-N:N
    z = z + A(k+N+1)*exp(1j*k*2*pi/T*t(ii));
end
y(ii)=z;z=0;
end


    