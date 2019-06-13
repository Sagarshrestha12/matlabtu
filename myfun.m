function result= myfun(n,x)

c=[1];
vec=[1:n];
mc=[c,1./vec];
a=[1,x.^vec]
result=sum(mc.*a);
end

