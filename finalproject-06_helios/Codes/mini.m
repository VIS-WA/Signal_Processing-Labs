function val=mini(q,Tm) %function to calculate the \sigma e^2 min values
%q=2.^q;
L=2;M=3;
Am=zeros(L);
l=[0:L-1];
for m=1:M
VmH = exp(-1j*2*pi*Tm(m)*l/L);
Vm = (VmH)';
%Am = Am + 12*(Vm*VmH)/(q(m)*q(m));
Am = Am + 3*(4^q(m))*(Vm*VmH);

end
size(Am);
if length(Am)==1
    val=Am;
else
val=trace(inv(Am));
end
end


