%% Nelineāras shēmas simulācija
edit
% šo failu saglabāt kā funx.m
%% Mēs atrisināsim Nelineāro vienādojumu
% izmantojot minējuma metodi
funx(-1)
funx(1)
funx(0.2)
funx(0.5)
funx(0.6)
funx(0.55)
funx(0.58)
funx(0.45)
funx(0.40)
funx(0.58)
funx(0.61)
funx(0.62)
funx(0.65)
funx(0.68)
funx(0.61)
funx(0.60)
funx(0.59)
funx(0.58)
funx(0.57)
funx(0.56)
funx(0.55)
funx(0.555)
funx(0.5556)
funx(0.5555)
funx(0.5560)
funx(0.5580)
funx(0.5570)
funx(0.5571)
funx(0.5573)
funx(0.5570)
funx(0.5568)
funx(0.5569)
funx(0.5565)
funx(0.55655)
funx(0.55650)
funx(0.55658)
funx(0.55665)
funx(0.55675)
funx(0.55685)
funx(0.55678)
funx(0.55679)
funx(0.55677)
funx(0.55676)
funx(0.55675)
funx(0.55775)
funx(0.55675)
funx(0.55677)
funx(0.55676)
funx(0.55675)
funx(0.556755)
funx(0.556750)
funx(0.556749)
funx(0.556745)
funx(0.556740)
funx(0.556730)
funx(0.556740)
funx(0.5567576)
%% Ņūtona metode
x = -2:0.01:5;
plot(x,y)
grid
% f(x) -> funx
% f'(x) -> funx atvasinājums
syms i0 a E UR R
diff(i0*(exp(a*(E-UR))-1)-UR/R)
diff(i0*(exp(a*(E-UR))-1)-UR/R,UR)
edit
% nosaukums funf.m
x0 = 0
% pirmais saknes tuvinājums
delta = funx(x0)/fund(x0)
x0 = x0-delta
x0
format long
delta = funx(x0)/fund(x0)
x0 = x0-delta
x0
delta = funx(x0)/fund(x0)
x0 = x0-delta
delta = funx(x0)/fund(x0)
x0 = x0-delta
delta = funx(x0)/fund(x0)
x0 = x0-delta
edit
% saglabāsim ar newmet5.m
y = newmet5
% F5
edit
lab5
URm
format short
% F5
dbquit
lab5
delete newmet5.m
delete funx.m
delete fund.m
clf
lab5
%9
%20
%10