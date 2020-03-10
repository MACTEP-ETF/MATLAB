%-- 03/10/2020 02:21:23 PM --%
diary lab5.m
R1=1; R2=2; R3=3; R4=4; R5=5; R6=6; R7=7;
E1=1; E2=2; E3=3;
R = [R1+R2+R3 -R2 0;
-R2 R2+R4+R5 -R5;
0   -R5   R5+R6+R7]
E = [E1 -E2 -E3]'
%% Meklēsim konturstrāvas
Ik = R\E % Gausa izslēgšanas metode VS aprēķinam
%% Uzdevums : atrast IR2, UR2, PR2 - ?
IR2 = Ik(1)-Ik(2)
UR2 = IR2*R2
P = U2*IR2
P = UR2*IR2
%% cits variants
% tagad mums būs 3 laika momenti
% un E1, E2, E3 būs 3 vērtības
E1 = [1 -1 0];
E2 = [2 -2 0];
E3 = [3 -3 0];
E = [E1; -E2; -E3]
%% Meklēsim konturstrāvas
Ik = R\E
%% Otrā rinda - 2. kontūrstrāva
%% Trešā rinda - 3. kontūrstrāva
%% Uzdevums : atrast IR3, UR3, PR3 - ?
IR3 = Ik(1,:)
UR3 = IR3*R3
PR3 = UR3.*IR3
%% cits variants
% tagad mums būs laika mainīgie signāli
t = 0:0.00:1;
E1 = sin(2*pi*3*t);
% E2 = 5; kā pareizi pierakstīt konstanti?
E2 = 5+zeros(size(t));
E3 = cos(2*pi*7*t);
%% risināsim vienādojumu sistēmas, lai atrastu kontūrstrāvas
% tagad jau mums ir 101 3 vienādojumu sistēma
Ik - R\E;
%% Uzdevums būs atrast un uzzīmēt UR5, PR5-?
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
E = [E1; -E2; -E3]
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
%% zīmēsim
plot(t,UR5,t,PR5)
legend('UR5','PR5')
t = 0:0.01:1;
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
PR5 = UR5.*IR5;
UR5 = IR5*R5;
PR5 = IR5.*UR5;
t = 0:0.01:1;
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
E1 = sin(2*pi*3*t);
E2 = 5+zeros(size(t));
E3 = cos(2*pi*7*t);
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
plot(t,UR5,t,PR5)
legend('UR5','PR5')
xlabel('t,s')
grid
legend('UR5','PR5')
%% cits paņēmiens, lai nebūtu pretruna
% ka uz "y" asi gan Volti, gan Vati
figure
yyaxis left
plot(t,UR5)
ylabel('spriegums')
yyaxis right
plot(t,PR5)
ylabel('jauda')
xlabel('t,s')
%% Rezultātu pārbaude
% pābaudīsim Kirhofa sprieguma likumu
% 3. kontūram
% UR5+UR6+UR7==-E3
% pārnesīsim visu vienā pusē
% UR5+UR6+UR7+E3==0
% un pielīdzināsim kādam mainīgajam
% UTst
% UTst = UR5+UR6+UR7+E3;
% un uzzīmēsim
UR6 = Ik(3,:)*R6;
UR7 = Ik(3,:)*R7;
% UTst = UR5+UR6+UR7+E3;
UTst = UR5+UR6+UR7+E3;
figure(3), plot(t,UTst)
% Vēlamais rezultāts - 0
diary iff
diary off