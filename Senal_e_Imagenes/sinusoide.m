% Respuesta 1 - vector 40Hz 
Tmax = 3;
t = 0:1/40:Tmax ;
%%%%%
% Respusta 2 - 
a=2;

% Respuesra 4: periodo = 0.5
f0= 2

%  Respuesta 6
ptoMedio = 4;
%x= a*sin(2*pi*f*t+0)+4;
x= a * sin(2*pi * f0 * t) + ptoMedio;

plot(t,x);

grid;


hold on;



