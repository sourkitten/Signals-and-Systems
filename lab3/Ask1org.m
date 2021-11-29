t0 = 1;


% 31 oroi

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


% 3 oroi

t = -3:0.01:3;
n = 3;
x0 = 1/2; % arxiki
x = zeros(1, length(t));

%seira fourier
for k = 1:n
  x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
end

% Plot gia seira fourier
figure(2);
x = x + x0;
plot(t,x); grid;

%titlos - axones - oria axonwn
title('Fourier Series I');
xlabel('Time (s)');
ylabel('x(t)');
ylim([0.15 0.85]);
saveas(2, "Ask1-xt-3.jpg"); % apothikeuoume


% 5 oroi

t = -3:0.01:3;
n = 5;
x0 = 1/2; % arxiki
x = zeros(1, length(t));

%seira fourier
for k = 1:n
  x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
end

% Plot gia seira fourier
figure(3);
x = x + x0;
plot(t,x); grid;

%titlos - axones - oria axonwn
title('Fourier Series I');
xlabel('Time (s)');
ylabel('x(t)');
ylim([0.15 0.85]);
saveas(3, "Ask1-xt-5.jpg"); % apothikeuoume


% 9 oroi

t = -3:0.01:3;
n = 9;
x0 = 1/2; % arxiki
x = zeros(1, length(t));

%seira fourier
for k = 1:n
  x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
end

% Plot gia seira fourier
figure(4);
x = x + x0;
plot(t,x); grid;

%titlos - axones - oria axonwn
title('Fourier Series I');
xlabel('Time (s)');
ylabel('x(t)');
ylim([0.15 0.85]);
saveas(4, "Ask1-xt-9.jpg"); % apothikeuoume


% 50 oroi

t = -3:0.01:3;
n = 50;
x0 = 1/2; % arxiki
x = zeros(1, length(t));

%seira fourier
for k = 1:n
  x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
end

% Plot gia seira fourier
figure(5);
x = x + x0;
plot(t,x); grid;

%titlos - axones - oria axonwn
title('Fourier Series I');
xlabel('Time (s)');
ylabel('x(t)');
ylim([0.15 0.85]);
saveas(5, "Ask1-xt-50.jpg"); % apothikeuoume


% 500 oroi

t = -3:0.01:3;
n = 500;
x0 = 1/2; % arxiki
x = zeros(1, length(t));

%seira fourier
for k = 1:n
  x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
end

% Plot gia seira fourier
figure(6);
x = x + x0;
plot(t,x); grid;

%titlos - axones - oria axonwn
title('Fourier Series I');
xlabel('Time (s)');
ylabel('x(t)');
ylim([0.15 0.85]);
saveas(6, "Ask1-xt-500.jpg"); % apothikeuoume


% 1000 oroi

t = -3:0.01:3;
n = 1000;
x0 = 1/2; % arxiki
x = zeros(1, length(t));

%seira fourier
for k = 1:n
  x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
end

% Plot gia seira fourier
figure(7);
x = x + x0;
plot(t,x); grid;

%titlos - axones - oria axonwn
title('Fourier Series I');
xlabel('Time (s)');
ylabel('x(t)');
ylim([0.15 0.85]);
saveas(7, "Ask1-xt-1000.jpg"); % apothikeuoume