clear;

pkg load symbolic 

t1 = 0:0.01:2*pi; % orizoume to diastima
xt = cos(1.3*pi*t1); % orizoume tin parastasi
% Plot gia xt synexous xronou
figure(1);
plot(t1,xt);
saveas(1, "Ask2-xt.jpg"); % apothikeuoume

n = 0:0.01:50; % orizoume to diastima
xn = sin(((1.8*pi)/10)*n); % orizoume tin parastasi
% Plot gia xn synexous xronou
figure(2);
stem(n,xn);
saveas(2, "Ask2-xn.jpg"); % apothikeuoume

syms t;

% Orizoume tous palmous ton x y z
u = heaviside(t);
ut1 = heaviside(t+1);
ut2 = heaviside(t-1);

% Orizoume ta x y z
x = (e^(-t))*u;
y = (e^(-(t+1)))*ut1;
z = (e^(-(t-1)))*ut2;

% Triplo plot gia x y z
figure(3);
subplot(3,1,1,"align"); % 1o subplot
ezplot(t,x, [-4 4 0 1]);
subplot(3,1,2,"align"); % 2o subplot
ezplot(t,y, [-4 4 0 1]);
subplot(3,1,3,"align"); % 3o subplot
ezplot(t,z, [-4 4 0 1]);
% Note: i entoli axis den leitourgouse opote
% valame tous axones ws orisma stin ezplot
saveas(3, "Ask2-xyz.jpg"); % apothikeuoume

