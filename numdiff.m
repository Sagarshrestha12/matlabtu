%comparing numerical differtiation formula for f'(x)
%Calculate f'(x) at x=1
a=1;
trueval=1/(1+a^2);
f=[];
b=[];
c=[];
ha=[];
for i=4:7
    h=10^(-i);
    ha=[ha;h];
%forward difference formula
    fwdDiff=(atan(a+h)-atan(a))/h;
    errFwd=abs(trueval-fwdDiff);
    f=[f,errFwd];
%central difference formula
    cenDiff=(atan(a+h)-atan(a-h))/(2*h);
    errCtr=abs(trueval-cenDiff);
    c=[c,errCtr];
%Backward Difference formula
    bkdDiff=(atand(a)-atan(a-h))/h;
    errBkd=abs(trueval-bkdDiff);
    b=[b,errBkd];
end
loglog(