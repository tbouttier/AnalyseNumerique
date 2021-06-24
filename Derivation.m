clear;                          % Effacement du Workspace
close all;                      % Fermeture de toutes les figures
clc;                            % Effacement de la fen�tre de commande
format long;

a = 0;
b = 1;
delta = 1
f= @(x)cos(x);
y= @(k)-sin(k);
%D�riv� premi�re
function deriv = derive_1(f,a,delta)
    x=a;
    deriv = (f(x+delta)-f(x-delta))/(2*delta);
end
% D�riv� seconde
function deriv2 = derive_2(f,a,b,delta)
  x=a;
  deriv2(1) = (f(x+delta)-2*f(x)+f(x-delta))/(delta)^2;
  x=b;
  deriv2(2) = (f(x+delta)-2*f(x)+f(x-delta))/(delta)^2;
  
end
%fprintf('D�riv�e = %ld \n', derive_1(f,a,b,delta));
fprintf('D�riv�e2 = %ld \n', derive_2(f,a,b,delta));

%A faire, tracer le bruit sur la fonction et la d�riv�e, puis trac� l'erreur

points=100

for i=1:10*points
  tab_deriv(i)= derive_1(f,i/points,delta)
  indice(i) = i/points
  erreur(i) = abs(y(i/points)-tab_deriv(i))
end

figure(1)
k = linspace(0,10,1000)
plot(indice,tab_deriv,'r*-',k,y(k),':')
figure(2)
plot(indice,erreur)