function f = EQUA(X)

%------------- Variables

k  = X(1);
y  = X(2);
w  = X(3);
z  = X(4);

%------------- Equations

f(1,1) = k * sin(2*w) + y * sin(w) - 2 * z; 
f(2,1) = k * sin(w) - z;
f(3,1) = k^2 * cos(2*w) + k*y*cos(w);
f(4,1) = 2*k + y - 24;

end
