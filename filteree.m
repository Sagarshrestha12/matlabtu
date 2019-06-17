f1=10;
f2=300;
fs=1100;
t=0:1/fs:0.2;

%%
% Next we will generate a low frequency signal.
y=sin(2*pi*f1*t)%frequency one
plot(t,y);

%%
y=y+sin(2*pi*f2*t)%frequency two
plot(t,y);

%%
b=ones(1,32)/32;
yy=filter(b,1,y);

%%
plot(yy) % Plot result
%%
% <http://www.mathworks.com MathWorks> 