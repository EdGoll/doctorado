function [x1,x2]=curvaLanzamiento(vox,voy,g,h1)
#  y=h1+(voy/vox)*x-((1/2)*(g/vox^2))*x^2;
  [x1,x2]=raices((voy/vox),((1/2)*(g/vox^2)),h1);
endfunction
