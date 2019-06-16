%%Initial condition
x0=2;
maxIter=50;
tol=1e-4;
%% Computation using Newton Rapshon method
x=x0;
xold=x0;
for i=1:maxIter
    f=2-x+log(x);
    df=-1+1/x;
    x=x-f/df;
    
    err(i)=abs(x-xold);
    xold=x;
    if (err(i)<=tol)
        break;
    end
end
