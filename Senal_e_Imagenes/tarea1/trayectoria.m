function [y,x] = trayectoria(vox,voy,h1,g)
  
  

%% vector tiempo de 10 s con 1/dt imagen por segundo 

dt = 1/100;

t =  [0:dt:10]; %% [primero : paso : ultimo ]



% vector x posicion horizontal
x = vox * t;  %%% m.s-1 * s => m

y = h1 + voy/vox * x - 1/2 * g / vox^2 * x.^2;





