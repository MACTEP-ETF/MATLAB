%% Ievads simboliskaj� matem�tik�
% M�r�is: iepaz�ties ar MatLab simbolisko matem�tiku
%% 1. uzdevums
% Atrisin�t vien�dojumu un smuki att�lot rezult�tu
syms x
z = solve(((log(x/2))/(x^2+1))-1)
pretty(z)
zLatex = latex(simplify(z));
strZ = ['$',zLatex,'$'];
%%
% Att�lo�u 1. uzdevuma risin�jumu mums pierast� rakst�:
text(0,0.5,strZ,'Interpreter','Latex','FontSize',32)

%% 2. uzdevums
% Nointegr�t funkciju un uzz�m�t grafiku
syms x
y = (a^sqrt(x)*log(a))/(2*sqrt(x)); 
yInt = int(y); 

%%
% Uzz�m�sim 2. uzdevuma grafiku izmantojot uzdevum� doto 'x' v�rt�bu diapazonu
syms x a
y = (a^sqrt(x)*log(a))/(2*sqrt(x)); % pati funkcija
x = [0.1:0.01:10];
%%
% T� k� 'a' v�rt�ba nav zin�ma, tad es pie�em�u, ka 'a' = 5
a = 5;
%%
% veiksim funkcijas vektoriz�ciju
yVek = vectorize(y)
yVekInt = vectorize(int(y))
%%
% tad ievietosim x v�rt�bu
yRez = eval(yVek);
yRezInt = eval(yVekInt);
%%
% Z�m�sim abus rezult�tus. Gan pa�u funkciju, gan t�s integr�li
plot(x,yRez,x,yRezInt,'linewidth',3)
yLatex = latex(y); 
yLatexInt = latex(int(y));
title('Funkcijas grafiks')
h = legend(['$',yLatex,'$'],['$',yLatexInt,'$']);
set (h,'Interpreter','Latex','FontSize',20);
legend('Location','northeastoutside');
text(0.2,175,'pie��mu, ka a=5');

%% Secin�jums
% Iesp�jams, esmu nekorekti uzz�m�jis 2. uzdevuma grafiku, jo nebiju
% mekl�jis "a" v�rt�bu, bet gan patva��gi ieliku skaitli.
% Ar rezult�tu esmu apmierin�ts! Tiesa, bija nedaudz j�pa�akar�jas, jo �ur
% tur sakum� biju sajaucis apa��s iekavas ar kvadr�t iekav�m un k�du laiku
% "sitos", kam�r sapratu savu neuzman�bas k��du.