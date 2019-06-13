function expval=multistepexp(a,h)
% Calculate e^(0.1) using multiple steps of Taylor's series
%%multiple-step computation
N=a/h;
expval=1;
for i=1:N
    expval=expval*(1+h+0.5*h^2 );
end


