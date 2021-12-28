clear all;

pkg load symbolic;

syms t;
ut = heaviside(t);

fourier(e^(-2*abs(t))) % fourier tis e^(-2*abs(t))
fourier(1/(1+t^2))     % fourier tis 1/(1+t^2)
fourier(sign(t))       % fourier tis sign(t)
fourier(e^(-(t^2)/8))  % fourier tis e^(-(t^2)/8)
fourier((e^(-2*t))*ut) % fourier tis e^((-2*t))*ut