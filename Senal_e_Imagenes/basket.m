%close all
clear all

g = 9.8;  % m.s2 gravedad
h1 = 2; %m altura inicial

theta = 45; % angulo inicial en grado
vo = 7; %  m.s-1 velocidad inicial
vox = vo*cosd(theta); % proyeccion horizontal cosd() = grado - cos() = rad
voy = vo*sind(theta); % proyeccion vertical

%%vector tiempo de 10 s con 25 imagenes por segundo
dt = 1/100
t = [ 0 : dt : 10 ] % ans 1 251 

%vector x posicion horizontal
 x = vox * t; %%% m.s-1 => m
 y = h1 + voy/vox * x - 1/2 * g / vox^2 * x.^2
 
figure;plot(x,abs(y),'.')
axis([0 10 0 10])
xlabel('x (m)')
ylabel('y (m)')
title(sprintf('vo = %1.1f m.s-1, theta = %1.1f grados',vo,theta))

%canasta
tmax = voy/g;
ymax = h1 + voy*tmax - 1/2*g*(tmax^2)
xmax = vox*tmax

for k = 0.01:ymax
  hold on ; plot(xmax,k,'ok');axis([0 10 0 10]);
  pause(dt)
endfor

%pelicula
tn =  size(t);
plot(x,abs(y),'.');axis([0 10 0 10]);
for i = 1:200
  hold on ; plot(x(i),abs(y(i)),'ok')  
  title(sprintf('t=%1.3f s',t(i)))
  pause(dt)
end

