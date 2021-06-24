clear;                          % Effacement du Workspace
close all;                      % Fermeture de toutes les figures
clc;                            % Effacement de la fenêtre de commande
format long;


h = 0.5;
a =0;
b=5;
y0=4;
x=a:h:b;
y = zeros(length(x));
    y(1) = y0;
    n = numel(y);   
  
y_point =@(y)-2*y;
for i= 1:n
     
    k1 = h*y_point(y(i))
    k2 = h*y_point(y(i)+k1/2)
    k3 = h*y_point(y(i)+k2/2)
    k4 = h*y_point(y(i)+k3)
    y(i+1) = y(i) + (1/6)*(k1+(2*k2)+(2*k3)+k4)
     
end



[t,y_check] = ode45(y_point,2);

plot(x,y)
title('Runge-Kutta')
figure
plot(x,y_check)
title('Vérification ode45')