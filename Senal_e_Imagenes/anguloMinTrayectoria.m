function thetaMin = anguloMinTrayectoria(vox,voy,h1,g)
  %y = h1 + voy/vox * x - 1/2 * g / vox^2 * x.^2
  y = [(-1/2* g / vox^2) (voy/vox) h1]
  thetaMin = arctand(polyder(y));
endfunction