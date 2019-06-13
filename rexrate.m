% To calculate f'(x) for an expre
k=1000;
ebyr=2500;
c=1;
t=600;
%% Differentation
r=k*exp(-ebyr/t)*c^1.25;
trueval=r*(ebyr/t^2);
h=[1e-3 1e-4 1e-5 1e-6 1e-7]*T;
r1=k*exp(-ebyr/(t+h))*c^1.25;
r2=k*exp(-ebyr/(t-h))*c^1.25;
numval=(r1-r2)/(2*h);

err=abs(trueval-numval);
