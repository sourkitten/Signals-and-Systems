clear all;

pkg load symbolic;

t = [0:0.01:10];   % xronos
f = [-10:0.01:10]; % suxnotita

% orizoume ta x, x(t)
ut = heaviside(t);
xt = exp(-2*t).*ut; % arxiko sima x(t)
xf = 1./((i*2*pi*f)+2); % metasximatismos fourier apo Ask1.m

% to sima x(t)
figure(1);
subplot(3,1,1,"align");  
plot(t,xt);
%plt.tight_layout()
xlabel("Time (s)"); ylabel("x(t)");
title("Signal x(t)");

% to platos (diladi metro) tou x(t)
subplot(3,1,2,"align");
plot(f,abs(xf));
xlabel("Frequency (Hz)"); ylabel("Amplitude");
title("Amplitude x(t)");

% i fasi tou x(t)
subplot(3,1,3,"align");
plot(f,angle(xf));
xlabel("Frequency (Hz)"); ylabel("Phase");
title("Phase x(t)");
saveas(1,"Ask2.jpg");