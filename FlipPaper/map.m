function ret = map( t,v1,v2,v3,v4 )
a=(t-v1)/(v2-v1);
b=a*(v4-v3);
ret=v3+b;
end

