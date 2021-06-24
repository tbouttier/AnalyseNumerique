clear;                          % Effacement du Workspace
close all;                      % Fermeture de toutes les figures
clc;                            % Effacement de la fenêtre de commande
format long;


h = [0.1,0.25,0.5,0.75];
a =0;
b=5;
y0=4;

function [x,y] = euler_t(h,a,b,y0)
  x = a:h:b;  % the range of x
  y = zeros(size(x));  % allocate the result y
  y(1) = y0;  % the initial y value
  n = numel(y);  % the number of y values
  % The loop to solve the DE
  for i=1:n-1
      f = (-2*(y(i)))
      y(i+1) = y(i) + h * f;
  end
 
 %subplot (2, 2, 1)
 % plot(x,y,'b - x', 'MarkerSize', 3, 'MarkerEdgeColor', 'r' ); grid on
 % title("Résolution de l'équation différentielle dy/dx = -tau*y avec y(0)=y_0")
 % xlabel('x')
 % ylabel('y')
end

%{
Tracé de quatre cas de h 
différent pour la convergence
%}

[x1,y1] = euler_t(h(1),a,b,y0)
[x2,y2] = euler_t(h(2),a,b,y0)
[x3,y3] = euler_t(h(3),a,b,y0)
[x4,y4] = euler_t(h(4),a,b,y0)

subplot (2, 2, 1)
plot(x1,y1,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid on
title("Résolution de l'équation différentielle dy/dx = -tau*y avec y(0)=y_0")
legend("h = 0,1 \n Stable");xlabel('x');ylabel('y')
  
subplot (2, 2, 2)
plot(x2,y2,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid on
title("Résolution de l'équation différentielle dy/dx = -tau*y avec y(0)=y_0")
legend("h = 0,25 \n Stable");xlabel('x');ylabel('y')

subplot (2, 2, 3)
plot(x3,y3,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid on
title("Résolution de l'équation différentielle dy/dx = -tau*y avec y(0)=y_0")
legend("h = 0,5 \n Limite de stabilité");xlabel('x');ylabel('y')
  
subplot (2, 2, 4)
plot(x4,y4,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid on
title("Résolution de l'équation différentielle dy/dx = -tau*y avec y(0)=y_0")
legend("h = 0,75 \n Instable"); xlabel('x');ylabel('y');
%Notes :
#Limite de convergence dépend de h, l'intervalle entre les valeurs, mais aussi de theta dans la fonction.