clear;

% Orizoume ta xn n un kai hn
xn = [zeros(1,1000) ones(1,1001) zeros(1,2000)]; 
n = -10:0.01:30;
un = [zeros(1,1000) ones(1,3001)];
hn = (5/8).^n.*un;

% Plot gia xn diakritou xronou
figure(1);
stem(n, xn);
axis([-10 30 -0.2 1.2]);
xlabel("n");
ylabel("xn");
saveas(1, "Ask4-xn.jpg"); % apothikeuoume

% Plot gia hn diakritou xronou
figure(2);
stem(n, hn);
axis([-10 30]);
xlabel("n");
ylabel("hn");
saveas(2, "Ask4-hn.jpg"); % apothikeuoume

yn = conv(xn,hn); % Synelixi xn, hn

% Plot gia yn diakritou xronou
n = -20:0.01:60;
figure(3);
stem(n, yn);
axis([-20 60]);
xlabel("n");
ylabel("yn");
saveas(3, "Ask4-yn.jpg"); % apothikeuoume
