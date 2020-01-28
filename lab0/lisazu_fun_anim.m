function lisazu_fun_anim(f1,f2)
% funkcija zīmē Lisažu figūras
% mainīsim f1, f2 - iegūsim dažādas figūras
% Call:
% lisazu_fun(f1,f2)
t = 0:0.01:1;
%f1 = 35; f2 = 35;
for i = 0:pi/100:200*pi
    x = cos(2*pi*f1*t);
    y = sin(2*pi*f2*t+i);
    plot(x,y)
    pause(0.01)
end
shg