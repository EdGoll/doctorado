function [polArray]=curvaLanzamientoPol(vox,voy,g,h1)
  #  y=h1+(voy/vox)*x-((1/2)*(g/vox^2))*x^2;
  polArray=[ -(1/2)*(g/vox^2) (voy/vox) h1 ];    
endfunction
