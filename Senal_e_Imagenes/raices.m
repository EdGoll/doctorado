function [x1,x2] = raices(a,b,c)
  x1=(-b + disc(a,b,c)) / (2*a);
  x2=(-b - disc(a,b,c)) / (2*a);
endfunction

function d=disc(a,b,c)
  d = sqrt( (b^2) - (4*a*c) );
endfunction
