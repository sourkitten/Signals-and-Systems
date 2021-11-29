t0 = 1;
n = 3;

for l = 1:7
  t = -3:0.01:3;
  x0 = 1/2; % arxiki
  x = zeros(1, length(t));

  %seira fourier
  for k = 1:n
    x = x + (1/(k*pi))*sin(pi*k/2)*e.^(j*pi*k*t);
  end

  % Plot gia seira fourier
  figure(l);
  x = x + x0;
  plot(t,x); grid;

  %titlos - axones - oria axonwn
  title('Fourier Series I');
  xlabel('Time (s)');
  ylabel('x(t)');
  ylim([0.15 0.85]);
  saveas(l, sprintf('Ask1-xt-%d.jpg', n)); % apothikeuoume
  %saveas(l, "Ask1-xt-%d.jpg", n); % apothikeuoume

  if (n == 3)
    n = 5
  elseif (n == 5)
    n = 9
  elseif (n == 9)
    n = 31
  elseif (n == 31)
    n = 50
  elseif (n == 50)
    n = 500
  elseif (n == 500)
    n = 1000
  endif
endfor