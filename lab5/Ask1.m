clear all;

n = 0:40;
N = 4;
en = 0.4*randn(size(n)); % 8oryvos
sn = 2*cos((pi*(n))/4);  % katharo sima
xn = sn + en;            % alloiwmeno sima
yn = zeros(1,length(n)); % kenos pinakas filtrarismenou simatos

% filtro simatos
for k = 0:(N-1)
  yn += xn;
endfor
yn = yn/N;

figure(1); % 1.a
% 8oryvos
subplot(4,1,1);
stem(en);
ylim([-3 3]); xlim([0 42]);
title("e(n)");
% katharo sima
subplot(4,1,2);
stem(sn);
ylim([-3 3]); xlim([0 42]);
title("s(n)");
% alloiwmeno sima
subplot(4,1,3);
stem(xn);
ylim([-3 3]); xlim([0 42]);
title("x(n)");
% filtrarismeno sima
subplot(4,1,4);
stem(yn);
ylim([-3 3]); xlim([0 42]);
title("y(n)");
saveas(1,"Ask1_a.jpg");


clear all;

figure(2); % 1.b1
N = 11;
w = -pi:0.01:pi;
H = (sin((w.*N)./2)./(N.*sin(w./2))).*exp((-j.*w.*(N-1))./2);
% metro
subplot(2,1,1);
plot(w,abs(H));
xlim([-pi pi]);
title("Amplitude");
% fasi
subplot(2,1,2);
plot(w,angle(H));
xlim([-pi pi]);
title("Angle");
saveas(2,"Ask1_b1.jpg");

clear all;

figure(3); % 1.b2
N = 11;
w = -3*pi:0.01:3*pi;
H = (sin((w.*N)./2)./(N.*sin(w./2))).*exp((-j.*w.*(N-1))./2);
% metro
subplot(2,1,1);
plot(w,abs(H));
xlim([-3*pi 3*pi]);
title("Amplitude");
% fasi
subplot(2,1,2);
plot(w,angle(H));
xlim([-3*pi 3*pi]);
title("Angle");
saveas(3,"Ask1_b2.jpg");