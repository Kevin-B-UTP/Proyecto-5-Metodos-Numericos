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
 
  
 ## ENTRADA---------------------------------------
    ##funcion
      dxdy = input('Ingrese la Derivada de la Función = @(x,y) (funcion) : '); 
      
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
              clc;
               ##-------------------ENCABEZADO-----------------
              fprintf('\n           __________________________________');
              fprintf('\n               MÉTODOS DE INTEGRACIONES');
              fprintf('\n                   Euler Mejorado');
              fprintf('\n           __________________________________\n');
              fprintf('\n \t i     \t    x_i   \t   y_i+1\n');
              fprintf('         _______________________________________\n'); 
              
           while (x_n <= finx)
              if(ciclo ==0)
                 fprintf('\n\t%2i\t %8.4f\t %8.4f \n',ciclo, x_n, y_n );
              else
               %y_n
                    y_n = y_an + (h/2)*( feval(dxdy,x_an,y_an) + feval(dxdy,x_an+h,y_an + h*(feval(dxdy,x_an,y_an))) );
                    
                    fprintf('\n\t%2i\t %8.4f\t %8.4f\t  \n',ciclo, x_n, y_n );
               endif
                fprintf('         _______________________________________\n'); 
            
                if( x_n == finx )
                  fprintf('\n                    i:   %8i', ciclo);
                  fprintf('\n                    x_i:   %8.4f', x_n);   
                  fprintf('\n                    y_i:   %8.4f\n', y_n);
                endif
                
                 ciclo ++;
                x_an = x_n;
                x_n += h;
                y_an = y_n;
           endwhile
           
   case 2
              clc;
              ##-------------------ENCABEZADO-----------------
              fprintf('\n                                        __________________________________');
              fprintf('\n                                              MÉTODOS DE INTEGRACIONES');
              fprintf('\n                                                     Runge Kutta');
              fprintf('\n                                        __________________________________\n');

                   
              ## CALCULOS-------------------------------------
              
              fprintf('\n \t i     \t    x_i   \t    k1  \t   k2\t           k3  \t            k4 \t  \t    y_n\n');
              fprintf('         _________________________________________________________________________________________________\n');      
                    while ( x_n <= finx )
                        if (ciclo == 0)
                          fprintf('\n\t%2i\t %8.4f\t \t \t \t \t\t \t                 %8.4f \n',ciclo, x_n, y_n );
                        else
                          ##k
                          k1 = feval(dxdy, x_an, y_an);
                          k2 = feval(dxdy, x_an + 0.5 * h, y_an + 0.5 * k1 * h);
                          k3 = feval(dxdy, x_an + 0.5 * h, y_an + 0.5 * k2 * h);
                          k4 = feval(dxdy, x_an + h, y_an + k3 * h);
                          
                          ##y_n
                          y_n = y_an + h/6*( k1 + 2 * k2 + 2 * k3 + k4 );
                          
                          fprintf('\n\t%2i\t %8.4f\t %8.4f\t %8.4f\t %8.4f\t %8.4f\t %8.4f\t \n',ciclo, x_n, k1, k2, k3, k4, y_n );
                        endif
                      fprintf('         _________________________________________________________________________________________________\n'); 
                      
                      if( x_n == finx )
                        fprintf('\n                                                i:   %8i', ciclo);
                        fprintf('\n                                              x_i:   %8.4f', x_n);   
                        fprintf('\n                                              y_i:   %8.4f\n', y_n);
                      endif
                      
                       ciclo ++;
                      x_an = x_n;
                      x_n += h;
                      y_an = y_n;
                      
                    endwhile
      case 3
           fprintf("Finalizacion del programa");
             %salir          
  endswitch
