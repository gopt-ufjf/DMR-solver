%************************ DMR-SOLVER example *************************
%
%
%                      GOPT - Optimization Group
%                                
%               Federal University of Juiz de Fora - UFJF
% 
%                             DMR-SOLVER
%
%*********************************************************************
clc
clear
close all

warning('off')

% Step-1: Define the initial value of variables.
X0(1) = 5.0;     % k
X0(2) = 6.0;     % y
X0(3) = 1.0;     % w
X0(4) = 1.0;     % z
 
% Step-2: Choose the tolerance value.
TOL = 0.001;

% Step-3: Write the function @EQUA with the equations
% It is writen in another file

% Step-4: Call solver and get the solution

[X,ITER,STAT,JAC] = DMR_SOLVER(@EQUA,X0,TOL);  % Call solver

%------- Solution
k=X(1);  
y=X(2);
w=X(3);
z=X(4);
