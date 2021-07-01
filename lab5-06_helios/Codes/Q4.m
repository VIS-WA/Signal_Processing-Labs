N=5;fs=10^4;
A=1 ./ (1:N).^2;
P=zeros(size(A));
adsr=[0.2,0.2,0.7,0.4,0.2];
% 
%  F_notes = 50:10:100;td_notes=ones(size(F_notes));
%  soundsc(synthesizer(A,F_notes,P,adsr,td_notes,fs),fs);
%  pause(sum(td_notes)+1);
% %-----------------------------------------------------
%  F_notes = 100:-10:40;td_notes=ones(size(F_notes));
%  soundsc(synthesizer(A,F_notes,P,adsr,td_notes,fs),fs);
%  pause(sum(td_notes)+1);
% %-----------------------------------------------------
%  M = 5;
%  F_notes= 50 + 50*rand(1,M); td_notes= 0.5 + rand(1,M);
%  soundsc(synthesizer(A,F_notes,P,adsr,td_notes,fs),fs);
%  pause(sum(td_notes)+1);
%-----------------------------------------------------
a4=466.164;g4=415.305;c5=554.365;d5=622.254;f5=739.989;c55=523.251;f55=698.456;
F_notes=[a4,a4,g4,a4,a4,g4,a4,a4,g4,a4,a4,g4,a4,g4,a4,c5,a4,g4,a4,a4,a4,a4,c5,c5,c5,c5,d5,f5,d5,c5,c5,a4,g4,c55,a4,g4,a4,a4,a4];
F_notes=[F_notes,a4,a4,g4,a4,a4,g4,a4,a4,g4,a4,a4,g4,a4,g4,a4,c5,a4,g4,a4,a4,a4,a4,c5,c5,c5,c5,d5,f55,d5,c5,c55,a4,g4,a4,c5,a4,g4,a4,a4];
td_notes=ones(size(F_notes)) ./ 5;
td_notes(21)=0.5;td_notes(40)=0.25;td_notes(78)=0.4;
soundsc(synthesizer(A,F_notes,P,adsr,td_notes,fs),fs); 
%audiowrite("Samajavaragamana.wav",synthesizer(A,F_notes,P,adsr,td_notes,fs),fs);
%tried to recreate Samajavaragama song from Ala Vaikuntapuramulo...
