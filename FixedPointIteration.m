%TO solve non linear equation using Fixed point iteration
% case-1:g(x)=2-ln(x)
% case-2:g(x)=exp(x-2)

%%Initial condition
x0=2;
maxIter=50;
tol=1e-4;
%% Computation using Fixed point method
% Newton Raphson method has quadratic rate of convergence
% Fixed point iteration has linear rate of convergence
x=x0;
xold=x0;
for i=1:maxIter
    x=2+log(x); 
    err(i)=abs(x-xold);
    xold=x;
    if (err(i)<=tol)
        break;
    end
end
