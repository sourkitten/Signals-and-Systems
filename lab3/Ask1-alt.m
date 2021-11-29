t0 = 1;

for l = 1:7
t = -3:0.01:3;
n = 31; % syntelestes
x0 = 1/2; % arxiki
x = zeros(1, length(t));

%seira fourier
for k = 1:n
  x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
end

% Plot gia seira fourier
figure(1);
x = x + x0;
plot(t,x); grid;

%titlos - axones - oria axonwn
title('Fourier Series I');
xlabel('Time (s)');
ylabel('x(t)');
ylim([0.15 0.85]);
saveas(1, "Ask1-xt-31.jpg"); % apothikeuoume