function y = synthesizer(A,F_notes,P,adsr,td_notes,fs)
y = [];
for ii =1:length(F_notes)
    z=td_notes(ii);%scaling factor
    [t,env] = envelope(z*adsr(1),z*adsr(2),adsr(3),z*adsr(4),z*adsr(5),fs);%passing scaled adsr values
        xt= harmonics(A,F_notes(ii),P,td_notes(ii),fs);
        xte= xt.*env;%enveloped output signal
        y = [y,xte];%concating the signal obtained
end
end