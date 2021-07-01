function [t_env,env] = envelope(a,d,s,sd,r,fs)% For each portionof the note, determine the corresponding piece of time vector and envelope.% Attack: amplitudelinearly increases from 0 to 1 in ‘a’seconds
tattack= 0:1/fs:a;
env= tattack/a;
t_env= tattack;

tdecay = t_env(length(t_env))+1/fs:1/fs:a+d;%adjusted the lengths to match the dimensions
t_env= [t_env, tdecay];
env= [env, 1+(tdecay-a)*(s-1)/d ];
    
tsustain = t_env(length(t_env))+1/fs:1/fs:a+d+sd;
t_env= [t_env, tsustain];
env= [env, s*ones(size(tsustain))];

trelease = t_env(length(t_env))+1/fs:1/fs:a+d+sd+r;
t_env= [t_env, trelease];
env= [env,s*(1-(trelease-a-d-sd)/sd)];
end