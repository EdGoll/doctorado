close all
clear all

g = 9.8; % m.s-2 accelaracion gravedad 
h1 = 2; % m altura inicial 

vo = 6.7; % m.s-1 velocidad inical
theta = 45; % angulo inical en grado (degree)

vox = vo*cosd(theta);  % proyeccion horizontal  
%%%%% cosd en degree cos en rad 
voy = vo*sind(theta);  % proeyccion vertical 
%%%%% sind en degree sin en rad 


%% vector tiempo de 10 s con 1/dt imagen por segundo 

dt = 1/100;

t =  [0:dt:10]; %% [primero : paso : ultimo ]

%  size(t)
%ans =    1   251

% vector x posicion horizontal
x = vox * t;  %%% m.s-1 * s => m

y = h1 + voy/vox * x - 1/2 * g / vox^2 * x.^2;

%%%% plot
figure;plot(x,abs(y),'.')
axis([0 4 0 4])
grid on
hold on;plot(3,3,'rs','markersize',20,'linewidth',2) %%% posicion canasto

xlabel('x (m)')
ylabel('y (m)')
title(sprintf('vo = %1.1f m.s-1, theta = %1.1f grados',vo,theta))

%%%%% pelicula !!!


figure;plot(x,abs(y),'.');axis([0 4 0 4]);
hold on;plot(3,3,'rs','markersize',20,'linewidth',2) %%% posicion canasto
grid on
for nn = 1:100

hold on;plot(x(nn),abs(y(nn)),'ok')

title(sprintf('t = %1.3f s',t(nn)))
pause(.1);%dt)


end


