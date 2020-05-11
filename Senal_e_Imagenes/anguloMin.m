function thetaMin = anguloMin(vox,voy,h1)
  g=9.8;
  y = diff(h1,x) + diff(voy/vox * x,x) - diff(1/2 * g / vox^2 * x.^2,x)
  dy = y
  thetaMin = arctand(polyder(dy))
endfunction