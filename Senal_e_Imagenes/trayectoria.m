
function [x,y] = trayectoria(xIn,h1In,voIn,thetaArrayIn,tArrayIn)
  
  g = 9.8;  % m.s2 gravedad
  h1 = h1In; %m altura inicial
  theta = thetaArrayIn; % angulo inicial en grado
  vo = voIn; %  m.s-1 velocidad inicial
  
  for thetaObj = theta
    
    vox = 1/(4.2) * 1/(sqrt(tand(thetaObj)-tand(15))); % proyeccion horizontal cosd() = grado - cos() = rad
    voy = vox * tand(thetaObj) % proyeccion vertical

    %%vector tiempo de 10 s con 25 imagenes por segundo
    dt = 1/1000
    t = tArrayIn % ans 1 251 

    %vector x posicion horizontal
     x = vox * t; %%% m.s-1 => m
     y = h1 + voy/vox * x - 1/2 * g / vox^2 * x.^2
     
    %figure;plot(x,abs(y),'.')
    axis([0 3 0 3])
    xlabel('x (m)')
    ylabel('y (m)')
    title(sprintf('vo = %1.1f m.s-1, theta = %1.1f grados',vo,theta))
    
    hold on;plot(x,abs(y),'.');axis([0 3 0 3]);
    
    for i = 1:200
      hold on ; plot(x(i),abs(y(i)),'ok')  
      title(sprintf('t=%1.3f s',t(i)))
      pause(dt)
    endfor
    
  endfor
  
end


