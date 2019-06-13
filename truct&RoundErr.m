n=5;
a=0.1;
vec=[1:n];
x=a.^[1:n]./cumprod(vec);
expval=1+cumsum(terms);
trueval=exp(a);
err=abs(trueval-expval);

