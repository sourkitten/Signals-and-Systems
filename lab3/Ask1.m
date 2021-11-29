clear all;

t0 = 1;
n = 3;

for l = 2:8
  t = -3:0.01:3;
  x0 = 1/2; % arxiki
  x = zeros(1, length(t));
  p = 0;
  
  % seira fourier
  for k = 1:n
    x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
    % mesi isxus simatos
    p = p + ((1/(k*pi))*sin(pi*k/2)).^2;
  end
  % prosthiki arxikis kai na fainetai ws pososto
  p = (p + x0^2)*200;
  
  % Plot gia seira fourier
  figure(l);
  x = x + x0;
  plot(t,x); grid;
  
  
  % titlos - axones - oria axonwn
  title(sprintf('Fourier Series I with %d factors - %d%% of median power', n, p));
  xlabel('Time (s)');
  ylabel('x(t)');
  ylim([0.15 0.85]);
  grid on;
  saveas(l, sprintf('Ask1-%d.jpg', n)); % apothikeuoume
  
  % allagi ston epomeno arithmo paragontwn
  if (n == 3)
    n = 5;
  elseif (n == 5)
    n = 9;
  elseif (n == 9)
    n = 31;
  elseif (n == 31)
    % plot gia metro kai fasi me 31 orous
    figure(1);
    subplot(2,1,1);
    plot(t,abs(x));
    title(sprintf('Absolute Fourier Series I with 31 factors', n));
    xlabel('Time (s)');
    ylabel('Absolute x(t)');
    grid on;
    subplot(2,1,2);
    plot(t,angle(x));
    title(sprintf('Angle of Fourier Series I with 31 factors', n));
    xlabel('Time (s)');
    ylabel('Angle x(t)');
    grid on;
    %ylim([0.15 0.85]);
    saveas(1, 'Ask1-31-abs-ang.jpg'); % apothikeuoume
    % synexeia me 50 orous
    n = 50;
  elseif (n == 50)
    n = 500;
  elseif (n == 500)
    n = 1000;
  endif
endfor