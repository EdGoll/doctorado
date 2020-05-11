%close all
clear all

g = 9.8;  % m.s2 gravedad
h1 = 2; %m altura inicial
theta = 55; % angulo inicial en grado
vo = 3; %  m.s-1 velocidad inicial
vox = vo*cosd(theta); % proyeccion horizontal cosd() = grado - cos() = rad
voy = vo*sind(theta); % proyeccion vertical

%%vector tiempo de 10 s con 25 imagenes por segundo
t = [ 0 : 1/25 : 10 ] % ans 1 251 

%vector x posicion horizontal
 x = vox * t; %%% m.s-1 => m
 y = h1 + voy/vox * x - 1/2 * g / vox^2 * x.^2
 
figure;plot(x,abs(y),'.')
axis([0 3 0 3])
xlabel('x (m)')
ylabel('y (m)')
title(sprintf('vo = %1.1f m.s-1, theta = %1.1f grados',vo,theta))