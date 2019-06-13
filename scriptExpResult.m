% Problem Setup
a=0.1;
h=0.001;
trueval=exp(a);
hall=[];
errAll=[];
%computing using multi-step exp method
for i=1:3
    h=10^(-i);
    expval=multistepexp(a,h);
    err=abs(expval-trueval);
    errAll=[errAll;err];
    hall=[hall,h];
end
loglog(hall,errAll,'--ro');

 

