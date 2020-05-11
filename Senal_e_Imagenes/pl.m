clc, clear

vox=((1/2)*(9.8/(1 / (4.2 * sqrt(1-tan(15))))^2))
#voy=2
h1=160
x=-1:0.1:1

y = -(vox)*x.^2 + (tan(45))*x   + h1
   
t= x / vox

comet(x,y)
grid on
hold on 
comet(t)

  
   
 
   


   
   