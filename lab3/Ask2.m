clear all;

pkg load symbolic;

syms t;
ut = ones(1, length(t)); % palmos
ht = (e^(-3*t))*ut;

% metasximatismos fourier tou ht
f = -60:0.01:60;
hf = 1./(3+j*2*pi*f);

abshf = abs(hf);
anglehf = angle(hf);

% plot gia metro kai fasi tou metasximatismou fourier tou ht
figure(1);
subplot(2,1,1);
plot(f, abshf);
title('Low pass system');
xlabel('Frequency (Hz)');
ylabel('Absolute');
ylim([-0.015 0.35]);
grid on;
subplot(2,1,2);
plot(f, anglehf);
xlabel('Frequency (Hz)');
ylabel('Angle');
ylim([-1.7 1.7]);
grid on;
saveas(1, 'Ask2-a.jpg'); % apothikeuoume


% neos metasximatismos fourier tou ht
f = -60:0.01:60;
hf = (2+j*2*pi*f)./(3+j*2*pi*f);

abshf = abs(hf);
anglehf = angle(hf);

% plot gia metro kai fasi tou neou metasximatismou fourier tou ht
figure(2);
subplot(2,1,1);
plot(f, abshf);
title('High pass system');
xlabel('Frequency (Hz)');
ylabel('Absolute');
ylim([0.65 1.015]);
grid on;
subplot(2,1,2);
plot(f, anglehf);
xlabel('Frequency (Hz)');
ylabel('Angle');
ylim([-0.225 0.225]);
grid on;
saveas(2, 'Ask2-b.jpg'); % apothikeuoume