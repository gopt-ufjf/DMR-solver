# DMR-solver

*by GOPT - Optimization Group of UFJF*

DMR-SOLVER solves the nonlinear system (NLS) with several variables and nonlinear and linear equations, as well. The DMR-SOLVER uses the iterative Newton Raphson Method (NRM) to find the solution in a few iterations.
The solver should be used through the following syntax:

```matlab
[X,ITER,STAT,JAC] = DMR_SOLVER(@EQUA,X0,TOL)
```

Where:

|      |  |
| :---        |    :----   |
| X	|is the solution of the NLS;
| ITER |	is the number of iterations;
| STAT |	is the status of convergence. STAT=1 means that convergence has reached, otherwise STAT=2;
| JAC |	is the Jacobian matrix at the convergence point;
| @EQUA &nbsp; |	is a function with the equation to be solved;
| X0 |	is the initial point;
| TOL |	is convergence tolerance.

**Example:**  Whether to solve the nonlinear system with four equations and four variables, the variables being **k**, **y**, **w**, **z** and the equations are:

k\*sin(2\*w)+y\*sin(w)-2\*z = 0 \
k\*sin⁡(w)-z = 0 \
k^2\*cos⁡(2\*w)+k\*y\*cos⁡(w) = 0 \
2\*k+y-24 = 0                       

1. Step 1: Define the initial value of variables.

```matlab
k = 5; y = 6; w = 1; z = 1;
X0(1) = k;
X0(2) = y;
X0(3) = w;
X0(4) = z;
```

2. **Step 2:** Choose the tolerance value. 

```matlab
TOL = 0.001;
```

3. **Step 3:** Write the function @EQUA with the equations, as follow:

```matlab
function f = EQUA(X)

%------- Variables

k  = X(1);
y  = X(2);
w  = X(3);
z  = X(4);

%--------- Equations
f(1,1) = k * sin(2*w) + y * sin(w) - 2 * z; 
f(2,1) = k * sin(w) - z;
f(3,1) = k^2 * cos(2*w) + k*y*cos(w);
f(4,1) = 2*k + y - 24;
                                    
end  % function
```

4. **Step 4:** Call solver and get the solution

```
[X,ITER,STAT,JAC]=DMR_SOLVER(@EQUA,X0,TOL) [X,ITER,STAT,JAC] = DMR_SOLVER(@EQUA,X0,TOL)  % Call solver

%------- Solution
k=X(1);  
y=X(2);
w=X(3);
z=X(4);
```

**Obs:** the Jacobian matrizmatrix (JAC) can be used to analiseanalyze teh the solution behaviourbehavior.
