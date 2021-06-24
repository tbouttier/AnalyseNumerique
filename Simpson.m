clear;                          % Effacement du Workspace
close all;                      % Fermeture de toutes les figures
clc;                            % Effacement de la fenêtre de commande
format long;                    



dx = 0.01;

a=0;
b=10;
aire = 0;
ind=1;

f= @(x)x.^2;


for i = a:dx*2:b
  h = ((i+2*dx)-i)*(f(i)+4*f(i+dx)+f(i+2*dx))/6;
  aire+= h;
  
  tx(ind)=i;
  ty(ind)=h;
  ind+=1;
  figure(1);
  xlabel('X');
  ylabel('Y');
  area(tx,ty);
    
endfor
fprintf('I = %f', aire);