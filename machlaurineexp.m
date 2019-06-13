%maclaurin series for exp(0.1)
n=5;
a=0.1;
expval=1.0;
currentTerm=1.0;
for i=1:n
    currentTerm=currentTerm*a/i;
    expval(i+1)=expval(i)+currentTerm;
end
trueval=exp(0.1);
err=abs(trueval-expval);