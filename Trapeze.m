clear;                          % Effacement du Workspace
close all;                      % Fermeture de toutes les figures
clc;                            % Effacement de la fenêtre de commande
format long;                    



dx = 0.001;

a=0;
b=10;
aire = 0;
ind=1;

f= @(x)x.^2;
somme=0;

for i = a:dx:b
  h = ((f(i)+f(i+dx))/2);
  aire+=h*dx;
  
 
    
endfor
fprintf('I = %f', aire);