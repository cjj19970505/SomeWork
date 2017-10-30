function [ X,Y ] = turnPage( m,R,L,t )
%TURNPAGE 此处显示有关此函数的摘要
%   此处显示详细说明
x=0;y=0;
if m>=L
    m=L;
elseif m<=0
    m=0;
end
if t>0.25 && t<0.5
    x0=map(t,0.5,0.25,0,L-pi*R);
    if m>=0 && m<x0
        x=m;
        y=0;
        normal=[0,1,0];
    elseif m>=x0 && m<x0+pi*R
        x=x0+sin((m-x0)/R)*R;
        y=R-cos((m-x0)/R)*R;
        normal=[-sin((m-x0)/R),cos((m-x0)/R),0];
    elseif m>=x0+pi*R && m<=L
        x=2*x0-m+pi*R;
        y=2*R;
        normal=[0,-1,0];
    end
end
if t<=0.25
    x0=map(t,0.25,0,L-pi*R,L);
    if m>=0 && m<x0
        x=m;
        y=0;
        normal=[0,1,0];
    elseif(m>=x0 && m<=L)
        x=x0+R*sin((m-x0)/R);
        y=R-R*cos((m-x0)/R);
        normal=[-sin((m-x0)/R),cos((m-x0)/R),0];
    end
end
if(t>=0.5)
    deltaR=map(t,0.5,1,0,R);
    fixedR=R-deltaR;
    if(m<pi*fixedR)
        x=sin(m/fixedR)*fixedR;
        y=fixedR-cos(m/fixedR)*fixedR;
        normal = [sin(m / fixedR), cos(m / fixedR),0];
    elseif (m >= pi * fixedR && m <= L)
        x = pi * fixedR - m;
        y = 2 * fixedR;
        normal = [0, -1, 0];
    end
end
X=x;
Y=y;
end

