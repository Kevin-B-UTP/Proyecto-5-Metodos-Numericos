%PROGRAMA DE LA RESOLUCION DE EDO
%%Hecho por Kevin Brennan, Edwar Gonzalez, Guillermo Lezcano

clc;
%Titulo del Programa
fprintf("METODOS de Euler Mejorado y Runge-Kutta (EDO basados en PVI)\n\n")
%Variable
opcion=0;
ciclo = 0;
aux = 0;
k1 =0;
k2 =0;
k3 =0;
k4 =0;
%Ingresion de la derivada de la funcion 
fprintf("Ingrese la derivada de la funcion, ejemplo: @(x,y) cos(2*x)\n");
dxdy=input('');
h   = input('Ingrese el valor de h: ');
x_n = input('Ingrese el valor de x_0 : ');
y_n = input('Ingrese el valor de y_0 : ');
finx = input('Desde x = 0 hasta cual valor?  : '); 
% Seleccion del tipo de metodo por el que se desea resolver el problema
clc;
fprintf("\n1. Euler Mejorado");
fprintf("\n2. Runge Kutta");
fprintf("\n3. Salir");
fprintf("\n\n-----------\n");
opcion = input('Ingrese la opción requerida: ');

switch (opcion)
    case 1
           
            fprintf('\n \t i     \t    x_i   \t      y_i+1\n');
        fprintf('         _______________________________________________\n'); 
           while (x_n <= finx)
              if(ciclo ==0)
                 fprintf('\n\t%2i\t %8.4f\t %8.4f \n',ciclo, x_n, y_n );
              else
               %y_n
                    y_n = y_an + (h/2)*( feval(dxdy,x_an,y_an) + feval(dxdy,x_an+h,y_an + h*(feval(dxdy,x_an,y_an))) );
                    
                    fprintf('\n\t%2i\t %8.4f\t %8.4f\t  \n',ciclo, x_n, y_n );
               endif
               fprintf('         _________________________________________________\n'); 
            
                if( x_n == finx )
                  fprintf('\n                                             i:   %8i', ciclo);
                  fprintf('\n                                            x_i:   %8.4f', x_n);   
                  fprintf('\n                                            y_i:   %8.4f\n', y_n);
                endif
                
                 ciclo ++;
                x_an = x_n;
                x_n += h;
                y_an = y_n;
           endwhile
   case 2
           
           
           
