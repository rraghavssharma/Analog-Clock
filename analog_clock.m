clc;
clear;
clf;
format shortg;
hold on;

x=0;
y=0;
r=10;
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot (xunit,yunit);
r=8;
s=[1];
for th = pi/6: pi/6: 2*pi
    ytemp = r * cos(th);
    xtemp = r * sin(th);
    text(xtemp, ytemp, num2str(s));
    s = s+1;
end

while(1)
    c = clock;
    c = c(1,4:6);
    min = c(1,2); sec=c(1,3);
    if (c(1,1)>12)
        hr = c(1,1)-12;
    else
        hr= c(1,1);
    end
    min1 = ceil(min/12);
    theta = (hr*pi)/6 + (min*pi)/30;
    f = figure(1); hold on;
    ytemp = 3*cos(theta); Y = [0 ytemp];
    xtemp = 3*sin(theta); X = [0 xtemp];
    p=plot(X,Y); hold on;
    theta1 = (min*pi)/30;
    ytemp1 = 5*cos(theta1); Y1 = [0 ytemp1];
    xtemp1 = 3*sin(theta1); X1 = [0 xtemp1];
    p1=plot(X1, Y1);
    theta2 = (sec*pi)/30;
    ytemp2 = 5*cos(theta2); Y2 = [0 ytemp2];
    xtemp2 = 3*sin(theta2); X2 = [0 xtemp2];
    p2=plot(X2, Y2);
    pause(1);
    delete(p2);
    delete(p1);
    delete(p);
end
    







