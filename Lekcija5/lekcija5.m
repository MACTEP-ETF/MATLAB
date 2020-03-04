x = Udk;
y = Idk;
sum([1 2 3])
X = [sum(x.^2) sum(x); sum(x) sum(ones(size(x)))]
Y = [sum(x.*y); sum(y)]
C = X\Y
UU = 0:0.01:2;
II = C(1)*UU + C(2);
hold on
plot(UU,II)
%% atkārtosim uzdevumu izmantojot
% 2. kārtas vienādojumu
% 2. kārtas polinomu
syms C1 C2 C3 zi xi yi Di % definēsim simboliskos mainīgos
zi = C1*xi^2+C2*xi+C3;
Di = zi-yi
Di^2
expand(Di^2)
atv1 = diff(Di^2,C1)
atv2 = diff(Di^2,C2)
atv3 = diff(Di^2,C3)
atv1
%subs () - substitūcia
term11 = subs(atv1,xi,Udk(1)) % aizvieto: atv1 xi elementu, ar Udk pirmo elementu.
term11
term11 = subs(atv1,xi,Udk) % aizvieto: atv1 xi elementu, ar Udk pirmo elementu.
term11 = subs((subs(atv1,xi,Udk),yi,Idk)
term11 = subs((subs(atv1,xi,Udk),yi,Idk))
term11 = subs(subs(atv1,xi,Udk),yi,Idk)
size(term11)
x = [1 2 3 4 5];
y = [2 3 4 5 6];
subs(xi*yi,xi,x)
subs(subs(xi*yi,xi,x),yi,y')
syms x1 x2 x3 x4 x5
syms y1 y2 y3 y4 y5
x = [x1 x2 x3 x4 x5];
y = [y1 y2 y3 y4 y5];
subs(subs(xi*yi,xi,x),yi,y')
syms x1 x2 x3 x4 x5 real
syms y1 y2 y3 y4 y5 real
x = [x1 x2 x3 x4 x5];
y = [y1 y2 y3 y4 y5];
subs(subs(xi*yi,xi,x),yi,y')
subs(atU]
subs(atv1, [xi,yi],xi,yi)
subs(atv1,[xi,yi],[xi,yi])
ediy
edit
term11 = subs(atv1,[xi,yi],[Udk(1),Idk(1)]);
atv1
atv2
atv = [atv1;atv2;atv3];
atv
subs(atv,[xi,yi],[Udk(1),Idk(1)])
term1 = subs(atv,[xi,yi],[Udk(1),Idk(1)]);
term2 = subs(atv,[xi,yi],[Udk(2),Idk(2)]);
term3 = subs(atv,[xi,yi],[Udk(3),Idk(3)]);
term4 = subs(atv,[xi,yi],[Udk(4),Idk(4)]);
term5 = subs(atv,[xi,yi],[Udk(5),Idk(5)]);
vienadojumi = term1+term2+term3+term4+term5
atb = solve(vienadojumi(1)==0,vienadojumi(2)==0,vienadojumi(3)==0)
atb.C1
II = double(atb.C1)*UU.^2+double(atb.C2)*UU+double(atb.C3);
hold on
plot(UU,II)
