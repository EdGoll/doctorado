hold on; 
x=0:0.01:6.5;
h1=2;
#y = -x.^2 + x   + h1;
Vox = 5;
Voy = 5;
y = -(1/2)*(9.8/(Vox^2))*x.^2 + (Voy/Vox)*x   + h1;


xt=6.5:0.25:7.25;

yt=xt-6.5

grid on;
#t= x/Vox


comet(x,y,0.01);
comet(xt,yt);



#comet(x,y,0.01);
#comet(xt,yt);
hold off; 