N=10;
x1  =  randn(1,N);
x2  =  randn(1,N);
[cc,lc]=dftconv(x1,x2);
cco=cconv(x1,x2,N);
lco=conv(x1,x2);
figure()
subplot(2,2,1), stem([1:length(cc)],cc,'r');title("Circular DFT Conv ");xlabel("Time (n)");ylabel("y[n]");
subplot(2,2,2), stem([1:length(lc)],lc,'g');title("Linear DFT Conv ");xlabel("Time (n)");ylabel("y[n]");
subplot(2,2,3), stem([1:length(cco)],cco,'r');title("Circular Conv ");xlabel("Time (n)");ylabel("y[n]");
subplot(2,2,4), stem([1:length(lco)],lco,'g');title("Linear Conv ");xlabel("Time (n)");ylabel("y[n]");