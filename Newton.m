clear;                          % Effacement du Workspace
close all;                      % Fermeture de toutes les figures
clc;                            % Effacement de la fenêtre de commande
format long;  

f = @(x)x.^2-3*x-2;

a=0;
b=10;
epsilon=0.1;
ep_tab = [0.5,0.1,0.0001,0.0000001];

function [n,c] = dichoto(a,b,epsilon,f)
  g=min(a,b); d=max(a,b);
  n=0;
  while(d-g>epsilon)
    n+=1;
    c = (g+d)/2;
    if (f(g)*f(c)<0)
      d=c;
    else
      g=c;
    endif
  endwhile
endfunction

for i= 1:4
  
% n_tab(i) = n;
 %n=0;
end
dichoto(0,10,0.1,f)
fprintf('c= %ld \n',dichoto(2));
fprintf('f(c)= %ld \n',f(dichoto(2)));
fprintf('Itérations : %d \n',dichoto(1));
