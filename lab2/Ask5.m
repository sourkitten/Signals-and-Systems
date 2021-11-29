clear;

pkg load symbolic;


% Arithimitiki oloklirwsi

% Orizoume ton axona tou xronou
Dt = 0.0001;
t = 0:Dt:1000;

x = exp((-2)*abs(t));
result = Dt*sum(x);
printf("Arithmetic result is: %d\n\n", result);

% Symboliki oloklirwsi
clear;

syms t;

x = exp((-2)*abs(t));
result = int(x, t, -inf, inf);
printf("Symbolic result is: %s\n\n", char(result));