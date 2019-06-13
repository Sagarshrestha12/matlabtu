v0=20;
g=9.81;
y=0;
t=0;
time=0;
location=0;
while (y>=0)
    disp(['As t= ',num2str(t),'location= ',num2str(y)]);
    t=t+0.1;
    y=v0*t-g*t*t/2;
    time=[time;t];
    location=[location;y];
end
plot(time,location)
xlabel('time(s)');
ylabel('location(m)');

    