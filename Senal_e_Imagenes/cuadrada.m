Tmax = 3;
fs=1/40
t = 0:1/40:Tmax ;

ptoMedio = 4
y = ptoMedio +  ptoMedio/2;


f0= 2
flag = 1;
 f=0.25
xAmp = 0.25 %f0/2

  x = 0;
  inicio = 0.0
  fin = f
 
for ts = t
   
  
  
  if  ts<=fin
    
    
    
    plot(ts,y);
    hold on;
    %pause (0.1)
      
  endif

  inicio = fin
  if ts > inicio
            
    plot(ts,-y);
    hold on;
    %pause (0.1)
      
  endif
x=tx;
endfor

%xlim([0 5])
ylim([-7 7]) 
 