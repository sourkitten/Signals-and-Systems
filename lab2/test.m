t = 0:0.01:2*pi; #Space of [0,2pi] with 0.01 step
xt = cos((1.3*pi)*t); 
figure;
#saveas(1, "ask1-1.jpg"); #Save the graph as jpg
plot(t,xt); #Plot of xt 
n = 0:50; #Space of [0,50]
xn = sin((1.8*pi/10)*n);
figure;
#saveas(2, "ask1-2.jpg"); #Save the graph as jpg
stem(n,xn); #Stem of xn
syms t;
x = e^(-t)*u(t);
y = e^(-t+1)*u(t+1);
z = e^(-t-1)*u(t-1);
figure;
subplot(3,1,1);
ezplot(t,x);
ezplot(t,y);
ezplot(t,z);