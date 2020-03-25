%% 4. laboratorijas darbs
% Kontūrstrāvas metode (KSM)

% Vladimirs Fedorovičs, REBM02, 041RDB182

a = imread("uzdevums.JPG");
image(a)
%%
% Dots:
t = 0:0.01:6.0; % tāds pats kā 3. laborā
E1 = 6+zeros(size(t));
E2 = sin(1*t);
J3 = lab3_fun(t);
R1=1; R2=2; R3=3; R4=4; R5=2; R6=6; R7=7; R8=8;
%% Uzdevumi:
% 1. UR8 - ?
% 2. PR8 - ?
% 3. Pārbaudīt un attēlot Kirhofa sprieguma likumu 3. kontūram
% NB! Trešā kontūra šim variantam nemaz nav, tādēļ pārbaudīšu 2. kontūram

%% Risinājums:
% Uzrakstīsim matricas ar sastādīto vienādojumu

R = [ R1+R2+R3+R4+R8   -R8
     -R8             R8+R7+R6+R5];
E = [-E1-J3*(R8+R4+R3); E2+J3*R8]; % tā kā vērtības ir vektori, tad arī transponēt nav nepieciešams!
Ik = R\E; % Gausa izslēgšanas metode VS aprēķinam
IR8 = Ik(2,:)-(Ik(1,:)+J3);
UR8 = IR8*R8;
PR8 = IR8.*UR8;

% Uzzīmēsim
figure(2)
plot(t,UR8,t,PR8)
legend('UR8','PR8')
yyaxis left
ylabel('spriegums')
yyaxis right
ylabel('jauda')
xlabel('t,s')
grid

%% Rezultātu pārbaude
% pābaudīsim Kirhofa sprieguma likumu 2. kontūram
% UR5+UR6+UR7+UR8==E2
% pārnesīsim visu vienā pusē
% UR5+UR6+UR7+UR8-E2==0
% un pielīdzināsim kādam mainīgajam
% UTst = UR5+UR6+UR7+UR8-E2;
UR5 = Ik(2,:)*R5;
UR6 = Ik(2,:)*R6;
UR7 = Ik(2,:)*R7;
UTst = UR5+UR6+UR7+UR8-E2;
% un uzzīmēsim
figure(3)
plot(t,UTst)
xlabel('t,s')
grid

%% Secinājums
% Tā teikt, bakstoties un eksperimentējot dabūju, lai kontūrstrāvas tiek
% aprēķinātas korekti. Sitos ilgi, bet esmu ļoti apmierināts ar rezultātiem
% :) Vēl ilgāk sitos, lai rezultātu pārbaude tiešām gala rezultātā būtu
% korekta un tuvinātos nullei. Dēļ tā arī nododu šo atskaiti pēdējā
% brīdī... :D Negribēju prasīt padomu Tev, jo tā jau biji palīdzējis ar
% vienādojuma sastādīšanu. Tāpēc cīnījos ar paša spēkiem.