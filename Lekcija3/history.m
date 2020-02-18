%-- 2020.02.12. 08:22:35 --%
mkdir Lekcija3
cd Lekcija3
diary lek3.m
% Datu tipi matlabā
% * Peldošā tipa objekts (double)
a = 1;
b = pi;
A = [1 2; 3 4];
class(a)
class(b)
class(A)
%%
% * teksta objetkts
c = 'Hello';
d = 'a';
g = '2';
class(c)
class(d)
class(g)
%%
%% Funkcijas kas ir saistītas ar teksta objektiem
% disp()
disp(c)
disp('Kaut kāds teksts')
%%
% fprintf
% formatētā izvada funkcija
fprintf('Sveiki studenti')
fprintf('Sveiki studenti\n')
a = 1;
b = pi;
c = 'Students';
% es gribētu izvadīt
c = 'Students1';
% Students1 zin ka pi = 3.14
fprintf(c, 'zin ka pi = ', b)
fprintf('%s zin ka pi = %g\n', c, b)
fprintf('%s zin ka pi = %10.3f\n', c, b)
doc fpintf
doc fprintf
%%
% * Alternatīva kā kompilēt teksta rindu (bez fprintf)
% Students zin kā pi = 3.14
c = 'Students1';
b = pi;
[c, 'zin',' ','ka pi = ', pi]
[c, 'zin',' ','ka pi = ', 65]
[c, ' zin',' ','ka pi = ', 65]
[c, ' zin',' ','ka pi = ', '65']
[c, ' zin',' ','ka pi = ', num2str(pi)]
% num2str, str2num veic pārveidojumus no double klases un char
% un otrādi
%%
% * ļoti līdzīga frintf funkcijai ir sprintf
% tā tikai saformē teksta rindu, bet neizvada to uz ekrāna
str = sprintf ('%s zik kas ir %g\n',c,b);
class(str)
plot([1 2], [1 2]);
title(str)
xlabel(str)
ylabel(str)
gtext(str)
legend(str)
%% Nākamais objekts būs datu struktūra
students.vards = 'Monu';
students.uzvards = 'Monu';
students.vecums = 20;
students
class(students)
atziimes.Fizika = 7;
atziimes.Matemaatika = 8;
atziimes.ETP = 9;
atziimes
students.sekmes = atziimes;
students
%%
% Kā piekļūt pie datu struktūras lauciņiem
students
A = students.vards
students
class(A)
students.sekmes
students.sekmes.Fizika
b = students.sekmes.Fizika
%%
% * struktūras var apvienot struktūru masīvos
students(2).vards = 'Jānis';
students(2).vecums = 21;
%%
% paskatīsimies kas iznāca
students
students(1)
students(2)
students(3).vards = 'Zane';
%%
% kā tikt pie lauciņiem
students(3).vards
students.vards
str = [students.vards]
%%
% * Nākamais matlaba objekts - šūnu matrica (cell array)
%%
% Atšķirībā no parastās matricas ļuj glabāt jaukta tipa datus
A=[1 2; 3 4]
B=['A' 'B'; 'C' 'D']
AA = [A A; A A]
%%
% Šūnu matricu veido ar { }
c = {AA, A,8}
d = {'Hello', 'Students', 1, A}
class(d)
a = ['Zane'];
b = ['Jānis'];
A = [a,b]
A = {a,b}
A = [a,b], sep=' '
%%
% kā tikt pie šūnu matricas elementiem
A = [a,b]
A = {a,b}
A{1} % iegūsim šūnas saturu
A(1) % iegūsim 1. šūnu (rezultāts 1x1 šunu matrica)
class(A(1))
class(A{1})
%%
% citi piemēri
c = {AA,A,8}
c{1} % iegūsim 1. šūnas saturu
c{1} (1,:) % iegūsim 1. šūnas 1. rindu
%%
% piemērs kā papildināt šūnu matricu
c{4} = students;
c
c{4} = students; % c šūnu matricā bija 3 elementi, un tagad pielikām 4.
c{end+1} = students; % tas pats automatizēti
c
%%
% vēlreiz par piekļūšanu pie elementiem
c{4}.vards
c{4}(1).vards
c{4}(3).vards
c{4}(3).vards; % 4. elementa ir struktūra un no viņas izskatam 3. objektu
%%
% tagad kad zinam šūnu matricas, varam atgriezties pie piemēra par struktūru masīva visu struktūru 1. lauciņa saglabāšanu
visi_vaardi = {students.vards}
students(end+1).uzvards = 'Monu';
visi_vaardi = {students.vards}
visi_vaardi = {students.uzvards}
class(students(3).vards)
class(students(4).vards)
class(students)
%%
% * pāriešana no Šūnu matricām uz struktūrām un otrādi
% cell2struct(), struct2cell(), fieldnames()
viens_students = students(1);
viens_students
struct2cell(viens_students)
masiivs = struct2cell(viens_students)
%%
% pie struktūru lauciņiem var tikt ar fieldnames
fieldnames(viens_students)
%%
% No šūnu matricas arī var veidot struktūru
cell2struct({'Max','Gavlass','sarkans'}, {'vards','uzvards','telefona_krasa'},2)
class(ans)
%% Cikla un nosacījumu operatori matlabaa
%% Nosacijumu operatoriem
a = input('Ievadi skaitli ');
3
if(rem(a,2)==1)
disp('nepāra skaitlis')
else
disp('pāra skaitlis')
end
%% cikla operatori
