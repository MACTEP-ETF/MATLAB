%% Ievads simboliskajâ matemâtikâ
% Mçríis: iepazîties ar MatLab simbolisko matemâtiku
%% 1. uzdevums
% Atrisinât vienâdojumu un smuki attçlot rezultâtu
syms x
z = solve(((log(x/2))/(x^2+1))-1)
pretty(z)
zLatex = latex(simplify(z));
strZ = ['$',zLatex,'$'];
%%
% Attçloðu 1. uzdevuma risinâjumu mums pierastâ rakstâ:
text(0,0.5,strZ,'Interpreter','Latex','FontSize',32)

%% 2. uzdevums
% Nointegrçt funkciju un uzzîmçt grafiku
syms x
y = (a^sqrt(x)*log(a))/(2*sqrt(x)); 
yInt = int(y); 

%%
% Uzzîmçsim 2. uzdevuma grafiku izmantojot uzdevumâ doto 'x' vçrtîbu diapazonu
syms x a
y = (a^sqrt(x)*log(a))/(2*sqrt(x)); % pati funkcija
x = [0.1:0.01:10];
%%
% Tâ kâ 'a' vçrtîba nav zinâma, tad es pieòemðu, ka 'a' = 5
a = 5;
%%
% veiksim funkcijas vektorizâciju
yVek = vectorize(y)
yVekInt = vectorize(int(y))
%%
% tad ievietosim x vçrtîbu
yRez = eval(yVek);
yRezInt = eval(yVekInt);
%%
% Zîmçsim abus rezultâtus. Gan paðu funkciju, gan tâs integrâli
plot(x,yRez,x,yRezInt,'linewidth',3)
yLatex = latex(y); 
yLatexInt = latex(int(y));
title('Funkcijas grafiks')
h = legend(['$',yLatex,'$'],['$',yLatexInt,'$']);
set (h,'Interpreter','Latex','FontSize',20);
legend('Location','northeastoutside');
text(0.2,175,'pieòçmu, ka a=5');

%% Secinâjums
% Iespçjams, esmu nekorekti uzzîmçjis 2. uzdevuma grafiku, jo nebiju
% meklçjis "a" vçrtîbu, bet gan patvaïîgi ieliku skaitli.
% Ar rezultâtu esmu apmierinâts! Tiesa, bija nedaudz jâpaèakarçjas, jo ður
% tur sakumâ biju sajaucis apaïâs iekavas ar kvadrât iekavâm un kâdu laiku
% "sitos", kamçr sapratu savu neuzmanîbas kïûdu.