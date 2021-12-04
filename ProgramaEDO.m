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

           