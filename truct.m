n=5;
a=[0.1,0.05,0.02,0.01];
vec=[1:n];
err=[];
for i=1:length(a)
   l=a(i);
    x=l.^[1:n]./cumprod(vec);
    expval=1+cumsum(x);
    trueval=exp(l);
    err=[err;abs(trueval-expval)];
%%error gets decresre with decrease in value of a
end
loglog(a,err);
xlabel('step size');ylabel('error');


