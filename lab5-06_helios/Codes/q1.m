fs=10000;
A=[0.5 0.5];
td=4;
P=[0 0];
t=0:1/fs:td;
F=[350 440];
y= SumOfSines(A,F,P,td,fs);
sound(y);
pause(5);
%--------1_2--------------
a=[0.5 0.5];
td=0.5;
P=[0 0];
t=0:1/fs:td;
b1=[480 620];
y= SumOfSines(a,b1,P,td,fs);
z1=[0];
a1=[0.5]
z= SumOfSines(a1,z1,P,td,fs);
x=[y z];
audi=[x x x x];
sound(audi);
pause(5);
%-----------1_3----------
td=2;
P=[0 0];
t=0:1/fs:td;
b1=[440 480];
y= SumOfSines(a,b1,P,td,fs);
z1=[0];
a1=[0.5]
z= SumOfSines(a1,z1,P,td,fs);
x=[y z];
audi=[x x x x];
sound(audi);
pause(5);
%----------------------1_4------------------------
fs=10000;
A=[0.5 0.5];
td=4;
P=[0 0];
t=0:1/fs:td;
F=[350 440];
n=1:500;
y= SumOfSines(A,F,P,td,fs);
for i= 1:500
    y1(i)=y(i);
end
subplot(3,1,1)
plot(n,y1);

td=0.5;
t=0:1/fs:td;
b1=[480 620];
y= SumOfSines(a,b1,P,td,fs);
z1=[0];
a1=[0.5]
z= SumOfSines(a1,z1,P,td,fs);
x=[y z];
for i=1:500
    x1(i)=x(i);
end
subplot(3,1,2)
plot(n,x1);
td=2;
P=[0 0];
t=0:1/fs:td;
b1=[440 480];
y= SumOfSines(a,b1,P,td,fs);
z1=[0];
a1=[0.5]
z= SumOfSines(a1,z1,P,td,fs);
x=[y z];
for i=1:500
    x1(i)=x(i);
end
subplot(3,1,3)
plot(n,x1);