a=.001;b=2;  %a is the increment of the x-values ,b is the Xo value in u(X-Xo)
x=-10:a:10;
y=size(x);
for i=1:1:length(x)
    if x(i)>=b y(i)=1;
    elseif x(i)<b y(i)=0;
    end
end
plot (x,y,'r');
hold on
xlabel("values of x")
ylabel("u(x-2)");
hold off