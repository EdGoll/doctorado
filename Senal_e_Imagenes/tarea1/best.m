function [xbest,ybest,alphabest,vobest] = best(h1,L,g,h2)



alphamin = atand( (h2-h1) / L ) ;
dalpha = 1; %grado
alphamax= 70; % angle max



v1 = (g*L/2)^0.5;


alpha = [alphamin:dalpha:alphamax];

vox = v1 * (tand(alpha) - tand(alphamin) ).^-0.5;

voy = vox.* tand(alpha);


%figure;plot(alpha,vox)
%hold on;plot(alpha,voy,'r--')
%legend('vox','voy')
%xlabel('vox (m.s-1)')
%ylabel('voy (m.s-1)')




%figure;
%pause

div = zeros(length(alpha),1);

for na = 1:length(alpha)
  

 [y,x] = trayectoria(vox(na),voy(na),h1,g);

 ind = max(find(x<L));
 
 div(na) = - (y(ind+1) -y(ind))/(x(ind+1) -x(ind)) ;
 
 
%plot(x,y)
%%axis equal
%xlim([0 5])
%ylim([0 5]) 

%hold on;plot(L,h2,'sr','markersize',14)
%hold off 
%grid on 

%  title(sprintf('alpha = %1.1f °', alpha(na)))
  
%  pause(0.1)
end




inda = max(find(div<=1));
[ybest,xbest] = trayectoria(vox(inda),voy(inda),h1,g);
alphabest = alpha(inda);
vobest = (vox(inda).^2 + voy(inda).^2)^0.5;


figure
hold on;plot(x,y,'r','linewidth',3)
title(sprintf('alpha = %1.1f °, vo = %1.1f m.s-1, x = %1.1f m, h=%1.1f m', alpha(inda),vobest,L,h1))

xlim([0 10])
ylim([0 10]) 

hold on;plot(L,h2,'sr','markersize',14)
