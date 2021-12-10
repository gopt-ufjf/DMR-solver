%***************************** Main DMR-SOLVER ************************
%
%
%                 GOPT - Optimization Group
%                                
%                 Federal University of Juiz de Fora - UFJF
% 
%                          DMR-SOLVER
%
%*********************************************************************
clear all 
clc
close all

warning('off')

% Step-1: Define the initial value of variables.
X0(1) = 5.0;     % k
X0(2) = 6.0;     % y
X0(3) = 1.0;   % w
X0(4) = 1.0;     % z
 
% Step-2: Choose the tolerance value.
TOL = 0.001;

% Step-3: Write the function @EQUA with the equations
% It is writen in another file

% Step-4: Call solver and get the solution

[X,ITER,STAT,JAC] = DMR_SOLVER(@EQUA,X0,TOL);  

X % is the solution


%Daqui para baixo não entra - Pode retirar.

%====================== Imprimindo Saída

CPU_TIME = toc; % tempo de fim do processamento

disp(' ')
disp(['  CPU_TIME = ',num2str(CPU_TIME), ' s'])
disp(' ')

if (STAT == 1) % Verifica se o problema convergiu

    %disp(' ===================== ')
disp(['  System converged: ',num2str(ITER), ' iterations'])
    disp(' ')
    
else
    
disp('  System has not converged ')
    disp(' ')
    
    if (STAT == 2)
disp(['Maximum Iterations Number: ',num2str(ITER), ' iterations'])
    end
    disp(' ')
disp(' =================== ')

end

%----------- Saída de Resultados
Xsol = X(1)
Ysol = X(2)
Tsol = X(3)*180/pi
Lsol = X(4)

Vmax = Xsol * Ysol * sind(Tsol) + Xsol^2 * sind(Tsol) * cosd(Tsol)



%----------- Final do Estudo




