clear;                          % Effacement du Workspaceclose all;                      % Fermeture de toutes les figuresclc;                            % Effacement de la fen�tre de commandeformat long;h = [0.1,0.25,0.5,0.75];a =0;b=5;y0=4;t = 2; #thetafunction [x,y] = heun_euler(h,a,b,y0,t)  x = a:h:b;  % the range of x  y = zeros(size(x));  % allocate the result y  ye = y;  y(1) = ye = y0;  % the initial y value  n = numel(y);  % the number of y values  % The loop to solve the DE  for i=1:n-1      f = (-t*(y(i)))      ye(i+1) = y(i) + h * f;      f2 = (-t*(ye(i)+h*f));      y(i+1) = y(i) + h*(f + f2)     endend[x1,y1] = heun_euler(h(1),a,b,y0,t)[x2,y2] = heun_euler(h(2),a,b,y0,t)[x3,y3] = heun_euler(h(3),a,b,y0,t)[x4,y4] = heun_euler(h(4),a,b,y0,t)subplot (2, 2, 1)plot(x1,y1,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid ontitle("R�solution de l'�quation diff�rentielle dy/dx = -tau*y avec y(0)=y_0")legend("h = 0,1 \n Stable");xlabel('x');ylabel('y')  subplot (2, 2, 2)plot(x2,y2,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid ontitle("R�solution de l'�quation diff�rentielle dy/dx = -tau*y avec y(0)=y_0")legend("h = 0,25 \n Stable");xlabel('x');ylabel('y')subplot (2, 2, 3)plot(x3,y3,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid ontitle("R�solution de l'�quation diff�rentielle dy/dx = -tau*y avec y(0)=y_0")legend("h = 0,5 \n Instable");xlabel('x');ylabel('y')  subplot (2, 2, 4)plot(x4,y4,'b - o', 'MarkerSize', 2, 'MarkerEdgeColor', 'r' ); grid ontitle("R�solution de l'�quation diff�rentielle dy/dx = -tau*y avec y(0)=y_0")legend("h = 0,75 \n Instable"); xlabel('x');ylabel('y');