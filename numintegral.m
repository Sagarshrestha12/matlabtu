%To calculate numerical integrals using
% Multiple application of newton-cotes formula
% f(x)=2-x+ln(x)
a=1;
b=2;
trueval=(b-b^2/2+b*log(b))-(a-a^2/2+a*log(a));
n=200;
%% Trapezoidal rule(multiple application)
h=(b-a)/n;
xvec=a:h:b;
fvec=myfunint(xvec);

%%from multiple intervals
interval=zeros(n,1);
for i=1:n
    interval(i,1)=h/2*(fvec(i)+fvec(i+1));
end
I_trap1=sum(interval);
err1=abs(trueval-I_trap1);
disp(I_trap1);
disp(['For h=',num2str(h),',Error=',num2str(err1)]);
 
%% Using the direct formula
 I_trap2=h/2*(fvec(1)+fvec(n+1)+2*sum(fvec(2:n)));
 disp(I_trap2);
 err2=abs(trueval-I_trap2) 
