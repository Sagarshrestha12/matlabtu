function fval=lowrenceSystem(X)
x=X(1);
y=X(2);
z=X(3);

% Define f(x)
fval(1,1)=x-y;
fval(2,1)=2*x-x*z-y;
fval(3,1)=x*y-3*z;
end
