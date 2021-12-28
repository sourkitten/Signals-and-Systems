clear all;

xn = [7 6 5 4 4 4 4 10 10 10 8 8 7 6 0];

yn = zeros(1,length(xn));
yn(1) = 0;
% zitoumeno filtro
for n = 2:(length(xn)-1)
  yn(n) = xn(n) - xn(n-1);
endfor

figure(1); % 2.a
stem(xn); hold on; grid;
stem(yn); hold off;
xlim([0.65 15.35]);
saveas(1,"Ask2_a.jpg")

clear all;

figure(2); % 2.b1
w = -pi:0.01:pi;
H = (1-cos(w)+j.*sin(w));
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
saveas(2,"Ask2_b1.jpg");

clear all;

figure(3); % 2.b2
w = -3*pi:0.01:3*pi;
H = (1-cos(w)+j.*sin(w));
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
saveas(3,"Ask2_b2.jpg");


% 2.c
clear all;

X = imread("lena.tiff");
figure(4); imshow(X);
% aspromayro
X = double(rgb2gray(X));
figure(5);imshow(X,[]);
saveas(5, "Ask_c_bw.jpg");
[R C] = size(X);

% filtro gia grammes
Y = zeros(R,C);
for k = 1:(R-1)
  Y(k,1) = 0;
  for n = 2:(C-1)
    Y(k,n) = X(k,n) - X(k,(n-1));
  endfor
endfor

% filtro gia stiles
Z = zeros(R,C);
for k = 1:(C-1)
  Z(1,k) = 0;
  for n = 2:(R-1)
    Z(n,k) = X(n,k) - X((n-1),k);
  endfor
endfor

% metro tou dianysmatos
G = zeros(R,C);
for k = 1:(R-1)
  for n = 2:(C-1)
    G(k,n) = sqrt(Y(k,n)^2+Z(k,n)^2);
  endfor
endfor
figure(6);imshow(G,[]);
saveas(6, "Ask_c_filter.jpg");
