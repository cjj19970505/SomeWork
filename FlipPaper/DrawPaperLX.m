%���������������ҳʱx��t�Ĺ�ϵ
%�����������ϵ���������Ե������������ռ�Ŀ��
%�����ϵ����Ҫָ����L/R
%֮��ͨ�����ϵ���t��ӳ����ʵ��
clc;clear;clf;
L=10;
t=0.3;
R=3;
hold on;
% for t=0:0.01:1
%     for m=0:0.05:9.9
%         hold on
%         axis([-10,10,-1,10]);
%         [x,y]=turnPage( m,R,L,t );
%         plot(x,y,'.','markersize',10);
%         %pause
%     end
%     hold off
%     pause(0.01);
% end


for R=0.1:0.2:L/pi
    X=[];
    p=2.4;
    for t=0:0.01:1
        m=L;
        [x,y]=turnPage( m,R,L,mapToPaperT(t,R,L,p) );
        X=[X,x];
    end
    T=0:0.01:1;
    plot(T,X/L,'-');
    grid on;
    xlabel('t');
    ylabel('x');
    pause(0.1);
end
hold off;

