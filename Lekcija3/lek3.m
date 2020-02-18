% Datu tipi matlabā
% * Peldošā tipa objekts (double)
a = 1;
b = pi;
A = [1 2; 3 4];
class(a)

ans =

double

class(b)

ans =

double

class(A)

ans =

double

%%
% * teksta objetkts
c = 'Hello';
d = 'a';
g = '2';
class(c)

ans =

char

class(d)

ans =

char

class(g)

ans =

char

%%
%% Funkcijas kas ir saistītas ar teksta objektiem
% disp()
disp(c)
Hello
disp('Kaut kāds teksts')
Kaut kāds teksts
%%
% fprintf
% formatētā izvada funkcija
fprintf('Sveiki studenti')
Sveiki studentifprintf('Sveiki studenti\n')
Sveiki studenti
a = 1;
b = pi;
c = 'Students';
% es gribētu izvadīt
c = 'Students1';
% Students1 zin ka pi = 3.14
fprintf(c, 'zin ka pi = ', b)
Students1fprintf('%s zin ka pi = %g\n', c, b)
Students1 zin ka pi = 3.14159
fprintf('%s zin ka pi = %10.3f\n', c, b)
Students1 zin ka pi =      3.142
doc fpintf
doc fprintf
%%
% * Alternatīva kā kompilēt teksta rindu (bez fprintf)
% Students zin kā pi = 3.14
c = 'Students1';
b = pi;
[c, 'zin',' ','ka pi = ', pi]

ans =

Students1zin ka pi = 

[c, 'zin',' ','ka pi = ', 65]

ans =

Students1zin ka pi = A

[c, ' zin',' ','ka pi = ', 65]

ans =

Students1 zin ka pi = A

[c, ' zin',' ','ka pi = ', '65']

ans =

Students1 zin ka pi = 65

[c, ' zin',' ','ka pi = ', num2str(pi)]

ans =

Students1 zin ka pi = 3.1416

% num2str, str2num veic pārveidojumus no double klases un char
% un otrādi
%%
% * ļoti līdzīga frintf funkcijai ir sprintf
% tā tikai saformē teksta rindu, bet neizvada to uz ekrāna
str = sprintf ('%s zik kas ir %g\n',c,b);
class(str)

ans =

char

[1 2],[1 2]);
 [1 2],[1 2]);
            ↑
{Error: Unbalanced or unexpected parenthesis or bracket.
} 
plot([1 2], [1 2]];
 plot([1 2], [1 2]];
                  ↑
{Error: Unbalanced or unexpected parenthesis or bracket.
} 
plot([1 2], [1 2]);
title(str)
xlabel(str)
ylabel(str)
gtext(str)
legend(str)
[Warning: There is no axes with which to associate a
legend.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/home/soft/matab2015/toolbox/matlab/scribe/legend.p', 187)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/home/soft/matab2015/toolbox/matlab/scribe/legend.p',187,0)">line 187</a>)] 

ans = 

  0x0 empty <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> array.

%% Nākamais objekts būs datu struktūra
students.vards = 'Monu';
students.uzvards = 'Monu';
students.vecums = 20;
students

students = 

      vards: 'Monu'
    uzvards: 'Monu'
     vecums: 20

class(students)

ans =

struct

atziimes.Fizika = 7;
atziimes.Matemaatika = 8;
atziimes.ETP = 9;
atziimes

atziimes = 

         Fizika: 7
    Matemaatika: 8
            ETP: 9

students.sekmes = atziimes;
students

students = 

      vards: 'Monu'
    uzvards: 'Monu'
     vecums: 20
     sekmes: [1x1 struct]

%%
% Kā piekļūt pie datu struktūras lauciņiem
students

students = 

      vards: 'Monu'
    uzvards: 'Monu'
     vecums: 20
     sekmes: [1x1 struct]

A = students.vards

A =

Monu

students

students = 

      vards: 'Monu'
    uzvards: 'Monu'
     vecums: 20
     sekmes: [1x1 struct]

class(A)

ans =

char

students.sekmes

ans = 

         Fizika: 7
    Matemaatika: 8
            ETP: 9

students.sekmes.Fizika

ans =

     7

b = students.sekmes.Fizika

b =

     7

%%
% * struktūras var apvienot struktūru masīvos
students(2).vards = 'Jānis';
students(2).vecums = 21;
%%
% paskatīsimies kas iznāca
students

students = 

1x2 <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> array with fields:

    vards
    uzvards
    vecums
    sekmes

students(1)

ans = 

      vards: 'Monu'
    uzvards: 'Monu'
     vecums: 20
     sekmes: [1x1 struct]

students(2)

ans = 

      vards: 'Jānis'
    uzvards: []
     vecums: 21
     sekmes: []

students(3).vards = 'Zane';
%%
% kā tikt pie lauciņiem
students(3).vards

ans =

Zane

students.vards

ans =

Monu


ans =

Jānis


ans =

Zane

.vards
 .vards
 ↑
{Error: Unexpected MATLAB operator.
} 
::vards
 ::vards
 ↑
{Error: Unexpected MATLAB operator.
} 
::.vards
 ::.vards
 ↑
{Error: Unexpected MATLAB operator.
} 
str = [students.vards]

str =

MonuJānisZane

%%
% * Nākamais matlaba objekts - šūnu matrica (cell array)
%%
% Atšķirībā no parastās matricas ļuj glabāt jaukta tipa datus
A=[1 2; 3 4]

A =

     1     2
     3     4

B=['A' 'B'; 'C' 'D']

B =

AB
CD

B=['HEllo' 'B'; 'C' 'D']
{Dimensions of matrices being concatenated are not
consistent.
} 
B=[HEllo 'B'; 'C' 'D']
{Undefined function or variable 'HEllo'.
} 
AA = [A A; A A]

AA =

     1     2     1     2
     3     4     3     4
     1     2     1     2
     3     4     3     4

AA = [A A; A 8]
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('horzcat')" style="font-weight:bold">horzcat</a>
Dimensions of matrices being concatenated are not
consistent.
} 
%%
% Šūnu matricu veido ar { }
c = {AA, A,8}

c = 

    [4x4 double]    [2x2 double]    [8]

d = {'Hello', 'Students', 1, A}

d = 

    'Hello'    'Students'    [1]    [2x2 double]

class(d)

ans =

cell

a = ['Zane'];
b = ['Jānis'];
A = [a,b]

A =

ZaneJānis

A = {a,b}

A = 

    'Zane'    'Jānis'

A = [a,b], sep=' '

A =

ZaneJānis


sep =

 

%%
% kā tikt pie šūnu matricas elementiem
A{1} % iegūsim šūnas saturu
{Cell contents reference from a non-cell array object.
} 
A = [a,b]

A =

ZaneJānis

A{1} % iegūsim šūnas saturu
{Cell contents reference from a non-cell array object.
} 
A = {a,b}

A = 

    'Zane'    'Jānis'

A{1} % iegūsim šūnas saturu

ans =

Zane

A(1) % iegūsim 1. šūnu (rezultāts 1x1 šunu matrica)

ans = 

    'Zane'

class(A(1))

ans =

cell

class(A{1})

ans =

char

%%
% citi piemēri
c = {AA,A,8}

c = 

    [4x4 double]    {1x2 cell}    [8]

c{1} % iegūsim 1. šūnas saturu

ans =

     1     2     1     2
     3     4     3     4
     1     2     1     2
     3     4     3     4

c{1} (1,:) % iegūsim 1. šūnas 1. rindu

ans =

     1     2     1     2

%% 
% piemērs kā papildināt šūnu matricu
c{4} = students;
c

c = 

    [4x4 double]    {1x2 cell}    [8]    [1x3 struct]

c{4} = students; % c šūnu matricā bija 3 elementi, un tagad pielikām 4.
c{end+} = students; % tas pats automatizēti
 c{end+} = students; % tas pats automatizēti
       ↑
{Error: Unbalanced or unexpected parenthesis or bracket.
} 
c{end+1} = students; % tas pats automatizēti
c

c = 

  Columns 1 through 4

    [4x4 double]    {1x2 cell}    [8]    [1x3 struct]

  Column 5

    [1x3 struct]

%% 
% vēlreiz par piekļūšanu pie elementiem
c{4}.vards

ans =

Monu


ans =

Jānis


ans =

Zane

c{4}(1).vards

ans =

Monu

c{4}(3).vards

ans =

Zane

c{4}(3).vards; % 4. elementa ir struktūra un no viņas izskatam 3. objektu
%% 
% tagad kad zinam šūnu matricas, varam atgriezties pie piemēra par struktūru masīva visu struktūru 1. lauciņa saglabāšanau
% tagad kad zinam šūnu matricas, varam atgriezties pie piemēra par struktūru masīva visu struktūru 1. lauciņa saglabāšanu
visi_vaardi = {students.vards}

visi_vaardi = 

    'Monu'    'Jānis'    'Zane'

students(end+1).uzvards = 'Monu';
visi_vaardi = {students.vards}

visi_vaardi = 

    'Monu'    'Jānis'    'Zane'    []

visi_vaardi = {students.uzvards}

visi_vaardi = 

    'Monu'    []    []    'Monu'

class(students(3).vards)

ans =

char

class(students(4).vards)

ans =

double

class(students)

ans =

struct

%%
% * pāriešana no Šūnu matricām uz struktūrām un otrādi
% cell2struct(), struct2cell(), fieldnames()
viens_students = stundents(1);
{Undefined function or variable 'stundents'.
} 
viens_students = students(1);
viens_students

viens_students = 

      vards: 'Monu'
    uzvards: 'Monu'
     vecums: 20
     sekmes: [1x1 struct]

struc2cell(viens_students)
{Undefined function or variable 'struc2cell'.
} 
struct2cell(viens_students)

ans = 

    'Monu'
    'Monu'
    [        20]
    [1x1 struct]

masiivs = struct2cell(viens_students)

masiivs = 

    'Monu'
    'Monu'
    [        20]
    [1x1 struct]

%%
% pie struktūru lauciņiem var tikt ar fieldnames
fieldnames(viens_students)

ans = 

    'vards'
    'uzvards'
    'vecums'
    'sekmes'

%% 
% No šūnu matricas arī var veidot struktūru
cell2struct({'Max','Gavlass','sarkans'}, {'vards','uzvards','telefona_krasa'},2)

ans = 

             vards: 'Max'
           uzvards: 'Gavlass'
    telefona_krasa: 'sarkans'

class(ans)

ans =

struct

%% Cikla un nosacījumu operatori matlabaa
%% Nosacijumu operatoriem
a = input('Ievadi skaitli ');
Ievadi skaitli 3
if(rem(a,2)==1)
disp('nepāra skaitlis')
else 
disp('pāra skaitlis')
end
nepāra skaitlis
%% cikla operatori
diary off

