clear;                          % Effacement du Workspace
close all;                      % Fermeture de toutes les figures
clc;                            % Effacement de la fen�tre de commande
format long;  


dx = 0.0002;

a=0;
b=10;
aire = 0;
ind = 1;

f= @(x)x;

for i = a:dx:b
  h = f((2*i+dx)/2);
  aire+= h*dx;
  

  
end

fprintf('I = %f', aire);