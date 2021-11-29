clear;

t = 0:0.01:1; % orizoume to diastima
xt = ones(1, length(t)); % palmos
ht = ones(1, length(t)); % kroustiki apokrisi

% Plot gia xt synexous xronou
figure(1);
plot(t,xt);
saveas(1, "Ask3-xt.jpg"); % apothikeuoume

ty = 0:0.01:2; % orizoume to diastima
yt = conv(xt,ht); % synelixis
% Plot gia yt synexous xronou
figure(2);
plot(ty,yt);
saveas(2, "Ask3-yt.jpg"); % apothikeuoume

tz = 0:0.01:3; % orizoume to diastima
zt = conv(yt,ht); % synelixis
% Plot gia zt synexous xronou
figure(3);
plot(tz,zt);
saveas(3, "Ask3-zt.jpg"); % apothikeuoume

tw = 0:0.01:4; % orizoume to diastima
wt = conv(zt,ht); % synelixis
% Plot gia wt synexous xronou
figure(4);
plot(tw,wt);
saveas(4, "Ask3-wt.jpg"); % apothikeuoume