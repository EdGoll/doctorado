function [vox,alfaMin] = mejorDistanciaAngulo(h1,h2,L)
##  h1 = 2
##  h2 = 4
##  L = 5
  g = 9.8; % Constante gravitacional
  alfaInicial = 45; % Constante, angulo de lanzamiento inicial
  difPuntoInicial = (h2-h1)/L;  
  v1 = sqrt(g*L/2);
  vox = v1*sqrt( 1/(tand(alfaInicial)-difPuntoInicial));
  voy = vox * tand(alfaInicial);
##  alfaMin = atand( difPuntoInicial );
alfaMin = anguloMin( vox,voy,h1 );
end

function alfaMin = anguloMin(vox,voy,h1)
  g=9.8; 
  f = [ (-1/2 * g / vox^2) (voy/vox) (h1) ]
  dx = polyder(f)
  alfaMin = atand(dx)
endfunction
