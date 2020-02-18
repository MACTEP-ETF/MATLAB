%% Simboliskā matemātika
%% Piemērs
syms a11 a12 a21 a22
A = [a11 a12 ; a21 a22]
 
A =
 
[ a11, a12]
[ a21, a22]
 
syms b11 b12 b21 b22
B = [b11 b12 ; b21 b22]
 
B =
 
[ b11, b12]
[ b21, b22]
 
C = A*B
 
C =
 
[ a11*b11 + a12*b21, a11*b12 + a12*b22]
[ a21*b11 + a22*b21, a21*b12 + a22*b22]
 
D = A.*B
 
D =
 
[ a11*b11, a12*b12]
[ a21*b21, a22*b22]
 
%% Simbolisko mainīgo definēšana
% 1. veids
x = sym('x');
y = sym('y');
sqrt(x^2)
 
ans =
 
(x^2)^(1/2)
 
%% pieņemsim ka 'x' > 0
x = sym('x','positive');
sqrt(x^2)
 
ans =
 
x
 
% 2. veids
syms a11 a12 a21 a22
A = [a11 a12 ; a21 a22]
 
A =
 
[ a11, a12]
[ a21, a22]
 
A'
 
ans =
 
[ conj(a11), conj(a21)]
[ conj(a12), conj(a22)]
 
%% pieņemsim, ka a11 a12 a21 a22 ir reāli
syms a11 a12 a21 a22 real
A'
 
ans =
 
[ a11, a21]
[ a12, a22]
 
%% 3. veids
A = sym('a',[3 4])
 
A =
 
[ a1_1, a1_2, a1_3, a1_4]
[ a2_1, a2_2, a2_3, a2_4]
[ a3_1, a3_2, a3_3, a3_4]
 
%% atvasināšana
syms x
diff (x^2)
 
ans =
 
2*x
 
%% parciālie atvasinājumi
syms x y
z = x^5 + y^4;
diff(z,x)
 
ans =
 
5*x^4
 
diff(z,y)
 
ans =
 
4*y^3
 
%% integrēšana
%% Nenoteiktais integrālis
int(x^2,x)
 
ans =
 
x^3/3
 
syms a x
int(x^2,a)
 
ans =
 
a*x^2
 
%% Noteiktais integrālis
syms x
int(x^2,x,-3,3)
 
ans =
 
18
 
double(int(x^2,x,-3,3))

ans =

    18

%% Robežas
% limit()
syms x
limit(1/(x-1),x,1,'left') % formula, x, uz kurieni tiecas, no kuras puses
 
ans =
 
-Inf
 
limit(1/(x-1),x,1,'right')
 
ans =
 
Inf
 
%% Vienādojuma risin
%% vienādojuma risināšana
syms x
solve(x^2-5*x+6==0,x)
 
ans =
 
 2
 3
 
% x+y+z = 21
   % x+y-z = 1
   % xiy+z = 9
syms x y z
atb = solve(x+y+z==21,x+y-z==1,x-y+z==9)

atb = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

atb.x
 
ans =
 
5
 
atb.y
 
ans =
 
6
 
atb.z
 
ans =
 
10
 
%% izteiksmju vienkāršošana
syms x
y = (x-1)*(x-2)/((x-3)*(x-4)^2)
 
y =
 
((x - 1)*(x - 2))/((x - 3)*(x - 4)^2)
 
yd = diff(y)
 
yd =
 
(x - 1)/((x - 3)*(x - 4)^2) + (x - 2)/((x - 3)*(x - 4)^2) - (2*(x - 1)*(x - 2))/((x - 3)*(x - 4)^3) - ((x - 1)*(x - 2))/((x - 3)^2*(x - 4)^2)
 
sumplify(yd)
{Undefined function or variable 'sumplify'.
} 
sumplify(yd)
{Undefined function or variable 'sumplify'.
} 
simplify(yd)
 
ans =
 
(- x^3 + 2*x^2 + 9*x - 16)/((x - 3)^2*(x - 4)^3)
 
%% izteiksmju vienkāršošana 2
syms y
y = (x-2)*(x-3);
y
 
y =
 
(x - 2)*(x - 3)
 
y2 = expand(y)
 
y2 =
 
x^2 - 5*x + 6
 
factor(y2)
 
ans =
 
[ x - 2, x - 3]
 
%% izteiksmju vienkāršošana 3
factor(y2)
 
ans =
 
[ x - 2, x - 3]
 
%% izteiksmju vienkāršošana 4
horner(y)
 
ans =
 
x*(x - 5) + 6
 
%% simboliskās konstantes
pi

ans =

    3.1416

format long
pi

ans =

   3.141592653589793

a = vpa('pi')
 
a =
 
3.1415926535897932384626433832795
 
a = vpa('2')
 
a =
 
2.0
 
a = vpa('pi')
 
a =
 
3.1415926535897932384626433832795
 
b = vpa('2')
 
b =
 
2.0
 
c = vpa(2)
 
c =
 
2.0
 
a+b+c
 
ans =
 
7.1415926535897932384626433832795
 
digits(100)
a = vpa('pi')
 
a =
 
3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068
 
a = vpa(exp)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('exp')" style="font-weight:bold">exp</a>
Not enough input arguments.
} 
a = vpa(exp(1))
 
a =
 
2.71828182845904553488480814849026501178741455078125
 
sqrt(a)
 
ans =
 
1.648721270700128237684053351021451524365396084769306765683519857939541955411797717598212470725485303
 
digits(10) % maina zīmju skaitu aiz komata
sqrt(a)
 
ans =
 
1.648721271
 
class(a)

ans =

    'sym'

class(b)

ans =

    'sym'

%% izteiksmju "skaistā" attēlošana
y = (x-1)*(x-2)/((x-3)*(x-4)^2);
pretty(y)
 (x - 1) (x - 2)
----------------
               2
(x - 3) (x - 4)

%% izteiksmju "skaistā" attēlošana - 2
syms x
y = sqrt(x-1)/(x-4)^5;
yltx = latex(y)

yltx =

    '\frac{\sqrt{x-1}}{{\left(x-4\right)}^5}'

yltx2 = ['$',yltx,'$']

yltx2 =

    '$\frac{\sqrt{x-1}}{{\left(x-4\right)}^5}$'

text(0,0.5,yltx2,'Interpreter'...
,'latex','FontSize',32,'BackgroundColor','White')
,'latex','FontSize',32,'BackgroundColor','White','AxisVisibility','False')
 ,'latex','FontSize',32,'BackgroundColor','White','AxisVisibility','False')
                                                                          ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
} 
,'latex','FontSize',32,'BackgroundColor','White','AxisVisibility',1)
 ,'latex','FontSize',32,'BackgroundColor','White','AxisVisibility',1)
                                                                    ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
} 
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
 
yd =
 
3*x^2 + 4*x - 5
 
% atradām atvasinājumu
% 3. 
% 3. Izteiksmes vektorizācija
%% 3. Izteiksmes vektorizācija
% (punktiņu ielikšana)
yv = vectorize(y)

yv =

    '2.*x.^2 - 5.*x + x.^3 + 4'

ydv = vectorize(yd)

ydv =

    '4.*x + 3.*x.^2 - 5'

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
legend(['$',yltx,'$'],['$',ydltx,'$']),...
set(h,'Interpreter','Latex')
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 
{Undefined function or variable 'h'.
} 
plot(x,yn,x,ydn)
legend(['$',yltx,'$'],['$',ydltx,'$']),...
h=legend(['$',yltx,'$'],['$',ydltx,'$']),...
set(h,'Interpreter','Latex')

h = 

[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$x^3+2\,x^2-5\,x+4$
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$3\,x^2+4\,x-5$
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> ($x^3+2\,x^2-5\,x+4$, $3\,x^2+4\,x-5$) with properties:

         String: {'$x^3+2\,x^2-5\,x+4$'  '$3\,x^2+4\,x-5$'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.558479539274472 0.815577080453760 0.328070168327867 0.083535106794020]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

h=legend([yltx],[ydltx]),...
set(h,'Interpreter','Latex')

h = 

[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
x^3+2\,x^2-5\,x+4
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
3\,x^2+4\,x-5
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> (x^3+2\,x^2-5\,x+4, 3\,x^2+4\,x-5) with properties:

         String: {'x^3+2\,x^2-5\,x+4'  '3\,x^2+4\,x-5'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.736858383033035 0.817572894154617 0.158627083881003 0.081560281574303]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

h=legend(['$',yltx,'$'],['$',ydltx,'$']),...
set(h,'Interpreter','Latex')

h = 

  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> ($x^3+2\,x^2-5\,x+4$, $3\,x^2+4\,x-5$) with properties:

         String: {'$x^3+2\,x^2-5\,x+4$'  '$3\,x^2+4\,x-5$'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.758959839506618 0.820409773051786 0.136525627407420 0.078723402677135]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

lab3_history
 
A =
 
[ a11, a12]
[ a21, a22]
 
 
B =
 
[ b11, b12]
[ b21, b22]
 
 
C =
 
[ a11*b11 + a12*b21, a11*b12 + a12*b22]
[ a21*b11 + a22*b21, a21*b12 + a22*b22]
 
 
D =
 
[ a11*b11, a12*b12]
[ a21*b21, a22*b22]
 
 
ans =
 
x
 
 
ans =
 
x
 
 
A =
 
[ a11, a12]
[ a21, a22]
 
 
ans =
 
[ a11, a21]
[ a12, a22]
 
 
ans =
 
[ a11, a21]
[ a12, a22]
 
 
A =
 
[ a1_1, a1_2, a1_3, a1_4]
[ a2_1, a2_2, a2_3, a2_4]
[ a3_1, a3_2, a3_3, a3_4]
 
 
ans =
 
2*x
 
 
ans =
 
5*x^4
 
 
ans =
 
4*y^3
 
 
ans =
 
x^3/3
 
 
ans =
 
a*x^2
 
 
ans =
 
18
 

ans =

    18

 
ans =
 
-Inf
 
 
ans =
 
Inf
 
 
ans =
 
 2
 3
 

atb = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

 
ans =
 
5
 
 
ans =
 
6
 
 
ans =
 
10
 
 
y =
 
((x - 1)*(x - 2))/((x - 3)*(x - 4)^2)
 
 
yd =
 
(x - 1)/((x - 3)*(x - 4)^2) + (x - 2)/((x - 3)*(x - 4)^2) - (2*(x - 1)*(x - 2))/((x - 3)*(x - 4)^3) - ((x - 1)*(x - 2))/((x - 3)^2*(x - 4)^2)
 
 
ans =
 
(- x^3 + 2*x^2 + 9*x - 16)/((x - 3)^2*(x - 4)^3)
 
 
ans =
 
[ x - 2, x - 3]
 
 
ans =
 
x*(x - 5) + 6
 

ans =

   3.141592653589793


ans =

   3.141592653589793

 
a =
 
3.141592654
 
 
a =
 
2.0
 
 
a =
 
3.141592654
 
 
b =
 
2.0
 
 
c =
 
2.0
 
 
ans =
 
7.141592654
 
 
a =
 
3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068
 
 
a =
 
2.71828182845904553488480814849026501178741455078125
 
 
ans =
 
1.648721270700128237684053351021451524365396084769306765683519857939541955411797717598212470725485303
 
 
ans =
 
1.648721271
 

ans =

    'sym'


ans =

    'sym'

 (x - 1) (x - 2)
----------------
               2
(x - 3) (x - 4)


yltx =

    '\frac{\sqrt{x-1}}{{\left(x-4\right)}^5}'


yltx2 =

    '$\frac{\sqrt{x-1}}{{\left(x-4\right)}^5}$'

 
yd =
 
3*x^2 + 4*x - 5
 

yv =

    '2.*x.^2 - 5.*x + x.^3 + 4'


ydv =

    '4.*x + 3.*x.^2 - 5'


h = 

[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$x^3+2\,x^2-5\,x+4$
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lab3_history', '/home/user/MATLAB/lab3/lab3_history.m', 141)" style="font-weight:bold">lab3_history</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab3/lab3_history.m',141,0)">line 141</a>)] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$3\,x^2+4\,x-5$
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lab3_history', '/home/user/MATLAB/lab3/lab3_history.m', 141)" style="font-weight:bold">lab3_history</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab3/lab3_history.m',141,0)">line 141</a>)] 
  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> ($x^3+2\,x^2-5\,x+4$, $3\,x^2+4\,x-5$) with properties:

         String: {'$x^3+2\,x^2-5\,x+4$'  '$3\,x^2+4\,x-5$'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.552380959618659 0.818650795779531 0.333928564190865 0.082142855014120]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


h = 

[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
x^3+2\,x^2-5\,x+4
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lab3_history', '/home/user/MATLAB/lab3/lab3_history.m', 143)" style="font-weight:bold">lab3_history</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab3/lab3_history.m',143,0)">line 143</a>)] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
3\,x^2+4\,x-5
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lab3_history', '/home/user/MATLAB/lab3/lab3_history.m', 143)" style="font-weight:bold">lab3_history</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab3/lab3_history.m',143,0)">line 143</a>)] 
  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> (x^3+2\,x^2-5\,x+4, 3\,x^2+4\,x-5) with properties:

         String: {'x^3+2\,x^2-5\,x+4'  '3\,x^2+4\,x-5'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.580952387338593 0.818650795779531 0.305357136470931 0.082142855014120]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


h = 

  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> ($x^3+2\,x^2-5\,x+4$, $3\,x^2+4\,x-5$) with properties:

         String: {'$x^3+2\,x^2-5\,x+4$'  '$3\,x^2+4\,x-5$'}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.623497691050241 0.821507938097394 0.262811832759283 0.079285712696257]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

diary off
