t = 0:0.01:1;
strm = {};
for i = 1:5
    f = 2;
    y = sin(2*pi*f*t-(i-1)*pi/5);
    plot(t,y)
    hold on
    %str=sprintf('sin(2%s\pi\timesf\timest+%s*pi/5)','\times',i);
    str=sprintf('sin(2*pi*f*t-%d*pi/5)',i);
    
    strm = [strm(:)',{str}];
end
hold off
legend(strm)