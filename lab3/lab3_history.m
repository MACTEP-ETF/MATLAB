%-- 02/18/2020 02:31:14 PM --%
%mkdir lab3
%cd lab3
%diary lab3.m
%% Simboliskā matemātika
%% Piemērs
syms a11 a12 a21 a22
A = [a11 a12 ; a21 a22]
syms b11 b12 b21 b22
B = [b11 b12 ; b21 b22]
C = A*B
D = A.*B
%% Simbolisko mainīgo definēšana
% 1. veids
x = sym('x');
y = sym('y');
sqrt(x^2)
%% pieņemsim ka 'x' > 0
x = sym('x','positive');
sqrt(x^2)
% 2. veids
syms a11 a12 a21 a22
A = [a11 a12 ; a21 a22]
A'
%% pieņemsim, ka a11 a12 a21 a22 ir reāli
syms a11 a12 a21 a22 real
A'
%% 3. veids
A = sym('a',[3 4])
%% atvasināšana
syms x
diff (x^2)
%% parciālie atvasinājumi
syms x y
z = x^5 + y^4;
diff(z,x)
diff(z,y)
%% integrēšana
%% Nenoteiktais integrālis
int(x^2,x)
syms a x
int(x^2,a)
%% Noteiktais integrālis
syms x
int(x^2,x,-3,3)
double(int(x^2,x,-3,3))
%% Robežas
% limit()
syms x
limit(1/(x-1),x,1,'left') % formula, x, uz kurieni tiecas, no kuras puses
limit(1/(x-1),x,1,'right')
%% vienādojuma risināšana
syms x
solve(x^2-5*x+6==0,x)
% x+y+z = 21
% x+y-z = 1
% xiy+z = 9
syms x y z
atb = solve(x+y+z==21,x+y-z==1,x-y+z==9)
atb.x
atb.y
atb.z
%% izteiksmju vienkāršošana
syms x
y = (x-1)*(x-2)/((x-3)*(x-4)^2)
yd = diff(y)
simplify(yd)
%% izteiksmju vienkāršošana 2
syms y
y = (x-2)*(x-3);
%% izteiksmju vienkāršošana 3
factor(y2)
%% izteiksmju vienkāršošana 4
horner(y)
%% simboliskās konstantes
pi
format long
pi
a = vpa('pi')
a = vpa('2')
a = vpa('pi')
b = vpa('2')
c = vpa(2)
a+b+c
digits(100)
a = vpa('pi')
a = vpa(exp(1))
sqrt(a)
digits(10) % maina zīmju skaitu aiz komata
sqrt(a)
class(a)
class(b)
%% izteiksmju "skaistā" attēlošana
y = (x-1)*(x-2)/((x-3)*(x-4)^2);
pretty(y)
%% izteiksmju "skaistā" attēlošana - 2
syms x
y = sqrt(x-1)/(x-4)^5;
yltx = latex(y)
yltx2 = ['$',yltx,'$']
text(0,0.5,yltx2,'Interpreter'...
,'latex','FontSize',32,'BackgroundColor','White')
text(0,0.5,yltx2,'Interpreter'...
,'latex','FontSize',32,'BackgroundColor','White')
set(gca,'Visible','off')
%% rezultātu grafiskā attēlošana
%% aprēķinu veikšana
syms x
y = x^2;
ezplot(y)
%% aprēķinu veikšana
%% rezultātu grafiskā attēlošana ar plot
%% (2. laboratorijas darba 2. uzdevums)
%% 1.
% pieņemsim, ka ir dota funkcija, kurai ir jāatrod atvasinājums, un gan funkciju gan atvasinājumu
% būs jāuzzīmē uz grafika
%izmantojot "plot" uzdotajā intervālā
% arī ar "latex" ģenerātoru būs jāizveido "legenda"
syms x
y = x^3+2*x^2-5*x+4;
% 2.
yd = diff(y)
% atradām atvasinājumu
%% 3. Izteiksmes vektorizācija
% (punktiņu ielikšana)
yv = vectorize(y)
ydv = vectorize(yd)
%% 4. Definēsim "x" kā skaitļu vektoru
x = -2:0.01:2;
yn = eval(yv);
ydn = eval(ydv);
%% tas bija 5. solis, izteiksmes interpretācija
% citiem vārdiem, paskatās kāds ir "x" un ieliek to
%% 6. Zīmēsim ar plot
plot(x,yn,x,ydn)
%% 7. anotēsim grafiku
yltx = latex(y);
ydltx = latex(yd);
plot(x,yn,x,ydn)
legend(['$',yltx,'$'],['$',ydltx,'$']),...
h=legend(['$',yltx,'$'],['$',ydltx,'$']),...
set(h,'Interpreter','Latex')
h=legend([yltx],[ydltx]),...
set(h,'Interpreter','Latex')
h=legend(['$',yltx,'$'],['$',ydltx,'$']),...
set(h,'Interpreter','Latex')