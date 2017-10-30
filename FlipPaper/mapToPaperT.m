function ret = mapToPaperT( t,R,L,p )
%MAPTOPAPERT 此处显示有关此函数的摘要
%   此处显示详细说明
r=(pi*R)/(2*L);
range1=((2*L-2*pi*R)*(1-r))/(2*L-pi*R);
range2=(pi*R*(1-r))/(2*L-pi*R);

if t<=r
    %ret=(4^((1-p)/p))*(t^(1/p));
    %ret=(r^((p-1)/p))*(t^(1/p));
    ret=0.25*((t/r)^(1/p));
    %ret=t;
elseif t>r && t<r+range1
    ret=map(t,r,r+range1,0.25,0.5);
elseif t>=r+range1
    ret=map(t,r+range1,1,0.5,1);
else 
    disp('FUCK');
    ret=0;
end
end

