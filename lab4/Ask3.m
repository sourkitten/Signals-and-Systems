clear all;

t = [0:0.0001:1];
n = [0:50];


% Gia nea periodo Ts=0.02:
Ts = 0.02; % periodos Ts
xt = 2*sin(8*pi*t) - cos(6*pi*t);  % sima x(t)
xn = 2*sin(8*pi*n*Ts) - cos(6*pi*n*Ts); % sima x(n)

% synexis xronos
figure(1);
subplot(2,1,1,"align");
plot(t,xt);
xlabel("Time (s)"); ylabel("x(t)");
title("Signal x(t) (continuous time, Ts = 0.02)");

% diakritos xronos
subplot(2,1,2,"align");
stem(n,xn); hold on;
plot(n,xn); hold off;
xlabel("Steps (n)"); ylabel("Signal x(n)");
title("Signal x(t) (discrete time, Ts = 0.02)");
saveas(1,"Ask3_1.jpg");


% Gia nea periodo Ts=0.3:

Ts = 0.3; % nea periodos Ts
xt = 2*sin(8*pi*t) - cos(6*pi*t); %x(t)
xn = 2*sin(8*pi*n*Ts) - cos(6*pi*n*Ts); % x(n)

% synexis xronos
figure(2);
subplot(2,1,1,"align");
plot(t,xt);
xlabel("Time (s)"); ylabel("Signal x(t)");
title("Signal x(t), (continuous time, Ts = 0.3");

% diakritos xronos
subplot(2,1,2,"align");
stem(n,xn); hold on;
plot(n,xn); hold off;
xlabel("Steps (n)"); ylabel("Signal x(n)");
title("Signal x(t), (discrete time, Ts = 0.3");
saveas(2,"Ask3_2.jpg");