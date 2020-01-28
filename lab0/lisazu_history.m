%-- 01/28/2020 02:39:59 PM --%
mkdir lab0
cd lab0/
a=1
b=2
c = a+b
A = [ 1 2 ; 3 4]
A = [1 2 ; 3 4]
B=A*A
C=A.*A
diary lab0_diary.m
% Uzzīmēsim 2. kārtas polinomu
% polinoma koeficienti:
C = [2 3 10]
C = [2 3 10];
C = [2 3 10]; % ar semikolu neuzrāda ievadīto vērtību
x = -6:2:6
% x = sākuma elements:solis_beigu_elements
y = C(1)*x.^2+C(2)*x+C(3)
plot(x,y)
x2 = -6:0.01:6;
y = C(1)*x2.^2+C(2)*x2+C(3)
y2 = C(1)*x2.^2+C(2)*x2+C(3)
plot(y2,x2)
plot(x2,y2)
y = C(1)*x.^2+C(2)*x+C(3)
%% Līnijas izskata maiņa
plot(x,y)
% krāsa
plot(x,y,'g')
% marķieris
plot(x,y,'o')
% līnijas izskats
plot(x,y,'--')
% visi trīs kopā
plot(x,y,'--og')
help plot
plot(x,y,'--<w')
plot(x,y,':<w')
plot(x,y,'-gd')
plot(x,y,'-gv')
plot(x,y,'-gs')
plot(x,y,'-bs')
plot(x,y,'-ks')
plot(x,y,':ks')
plot(x,y,'-.ks')
plot(x,y,'ks')
plot(x,y,'ws')
plot(x,y,'w.')
plot(x,y,'-w.')
plot(x,y,'-c.')
plot(x,y,'-r.')
plot(x,y,'-r*')
plot(x,y,'-r^')
close all
my_plot(x2,y2)
close all
% Kā zīmēt vairākas līknes
plot(x,y,x2,y2)
% ja x ir vienāds
plot(x,[y' -y'])
plot(x,y,'o',x2,y2)
% citas grafiskās funkcijas
stem(x,y)
stairs(x,y)
bar(x,y)
%% Kā zīmēt vairākas līknes - 2 veids
plot(x2,y2)
hold on
stairs(x,y)
stem(x,y)
hold off
%% Lisažu figuras zīmēšana
% parametriskie grafiki
edit
help lisazu
lisazu
lisazu_fun(32,32)
lisazu_fun(25,32)
lisazu_fun(25,42)
lisazu_fun(15,42)
lisazu_fun(25,42)
lisazu_fun(2.,42)
lisazu_fun(20,42)
lisazu_fun(30,42)
lisazu_fun(25,25)
lisazu_fun(25,35)
lisazu_fun(25,42)
lisazu_fun_anim(25,42)
lisazu_fun_anim(12,21)
lisazu_fun_anim(1,21)
lisazu_fun_anim(35,21)
lisazu_fun_anim(35,15)
lisazu_fun_anim(25,15)
lisazu_fun_anim(15,15)
lisazu_fun_anim(15,1)
lisazu_fun_anim(150,1)
lisazu_fun_anim(10,1)
lisazu_fun_anim(10,10)
lisazu_fun_anim(20,20)
lisazu_fun_anim(22,20)
lisazu_fun_anim(22,32)
lisazu_fun_anim(9,32)
lisazu_fun_anim(7,32)
lisazu_fun_anim(12,32)
lisazu_fun_anim(7,32)
lisazu_fun_anim(7,12)
lisazu_fun_anim(45,12)
lisazu_fun_anim(45,10)
lisazu_fun_anim(45,11)
lisazu_fun_anim(45,15)
lisazu_fun_anim(45,16)
lisazu_fun_anim(45,18)
lisazu_fun_anim(45,19)
lisazu_fun_anim(45,20)
lisazu_fun_anim(42,18)
lisazu_fun_anim(43,18)
lisazu_fun_anim(33,18)
lisazu_fun_anim(35,18)
lisazu_fun_anim(35,42)
lisazu_fun_anim(38,42)
lisazu_fun_anim(31,42)
lisazu_fun_anim(30,42)
lisazu_fun_anim(85,42)
lisazu_fun_anim(85,85)
lisazu_fun_anim(99,1)
lisazu_fun_anim(99,2)
lisazu_fun_anim(99,3)
lisazu_fun_anim(99,5)
lisazu_fun_anim(99,7)
lisazu_fun_anim(99,10)
lisazu_fun_anim(5,99)
lisazu_fun_anim(1,99)
lisazu_fun_anim(9,99)
lisazu_fun_anim(9,90)
lisazu_fun_anim(15,85)
lisazu_fun_anim(15,84)
lisazu_fun_anim(15,74)
lisazu_fun_anim(15,64)
lisazu_fun_anim(25,64)
lisazu_fun_anim(25,60)
lisazu_fun_anim(25,65)
lisazu_fun_anim(25,66)
lisazu_fun_anim(15,66)
lisazu_fun_anim(22,66)
lisazu_fun_anim(24,66)
lisazu_fun_anim(25,66)
diary off