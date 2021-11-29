clear all

t1 = -1:0.01:1
x1 = 2*sin(5*pi*t1)
plot(t1,x1)

t2 = -5:0.01:5
x2 = e^(t2+2)
plot(t2,x2)

t3 = -3:0.01:3
x3 = cos(2*pi*t3)+3*cos(10*pi)
plot(t3,x3)

t4 = -10:0.01:10
x4 = t4^2+3*t4+2
plot(t4,x4)

t5 = -10:0.01:10
x5 = (sqrt(1-cos(t5))+sqrt(cos(t5)))^2
plot(t5,x5)