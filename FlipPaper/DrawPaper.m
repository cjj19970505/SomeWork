clc;clear;clf;
L=10;
t=0.3;
R=3;
p=2.4;
for t=0:0.01:1
    for m=0:0.2:10
        hold on
        axis([-10,10,-1,10]);
        [x,y]=turnPage( m,R,L,mapToPaperT(t,R,L,p) );
        plot(x,y,'.','markersize',10);
        %pause
        end
        hold off
    pause(0.01);
end