[x,z]=audioread("sp.wav");


sound(x,z);
 for i = 1:8
     y=quant(x,2^i,-0.5,0.5);
     sound(y,z);
     pause(2);
 end