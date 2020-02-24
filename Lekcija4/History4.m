%% Polinomiālā aprokcimācija un interpolācija
%% Polinomiālā interpolācija
U=0:0.01:2;
i0=1e-6; a = 5;
I = i0*(exp(a*U)-1);
figure(1),plot(U,I)
%% Bet pieņemsim ka mēs nezinam sakarību,
% un veicam mērījumus, kā rezultātā
% mums būs sekojošie mērījumu punkti
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
hold on
h = plot(Udk,Idk,'o');
figure(2),plot(Udk,Idk,'o-')
% Mēs mēģināsim atrast sakarību kas apraksta dotus punktus
%% Mēs mēģināsim atrast sakarību kas apraksta dotus punktus
% sakarību meklēsim polinomiālā veidā
% un ja punktu skaits ir N = 5
% polinomiālas interpolācijas gadījumā ir jāizvēlās polinoms ar pakāpi
% N-1 = 4
N = 5
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
%% Vandermonda matrica (Veiksim pierakstu matlabā)
X = vander(Udk)
Y = Idk'
%% Lineāru vienādojumu sistēmu, kas ir pierakstītā matricu veidā var atrast ar "\"
% X*C = Y; kur C ir nezināmie
C = X\Y % šeit ir apslēpta VS risināšana
%% Ieliksim to polinomā un uzzīmēsim rezultātu
U = 0:0.01:2;
I = C(1)*U.^4+C(2)*U.^3+C(3)*U.^2+C(4)*U+C(5);
figure(1)
hold on
plot(U,I,':')
%% Polinomiālā aprokcimācija un interpolācija
%% Polinomiālā interpolācija
U=0:0.01:2;
i0=1e-6; a = 5;
I = i0*(exp(a*U)-1);
figure(1),plot(U,I)
%% Bet pieņemsim ka mēs nezinam sakarību,
% un veicam mērījumus, kā rezultātā
% mums būs sekojošie mērījumu punkti
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
hold on
h = plot(Udk,Idk,'o');
figure(2),plot(Udk,Idk,'o-')
% Mēs mēģināsim atrast sakarību kas apraksta dotus punktus
%% Mēs mēģināsim atrast sakarību kas apraksta dotus punktus
% sakarību meklēsim polinomiālā veidā
% un ja punktu skaits ir N = 5
% polinomiālas interpolācijas gadījumā ir jāizvēlās polinoms ar pakāpi
% N-1 = 4
N = 5
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
%% Vandermonda matrica (Veiksim pierakstu matlabā)
X = vander(Udk)
Y = Idk'
%% Lineāru vienādojumu sistēmu, kas ir pierakstītā matricu veidā var atrast ar "\"
% X*C = Y; kur C ir nezināmie
C = X\Y % šeit ir apslēpta VS risināšana
%% Ieliksim to polinomā un uzzīmēsim rezultātu
U = 0:0.01:2;
I = C(1)*U.^4+C(2)*U.^3+C(3)*U.^2+C(4)*U+C(5);
figure(1)
hold on
plot(U,I,':')
%% Kā uzlabot rezultātu
%% jāsamazina polinoma pakāpe
%% Mums ir jāizmet kāds no mērījuma punktiem
% uzmetīsim 4. punktu
Udk
Idk
Udk(4)=[];
Idk(4)=[];
Udk
Idk
% atkārtosim interpolāciju
X = vander(Udk);
Y = Idk';
C = X\Y;
U = 0:0.01:2;
I = C(1)*U.^3+C(2)*U.^2+C(3)*U.^1+C(4);
figure(1)
plot(U,I,'c:')
%% Izmetīsim citu punktu
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
Udk(2)=[];
Idk(2)=[];
X = vander(Udk);
Y = Idk';
C = X\Y;
I = C(1)*U.^3+C(2)*U.^2+C(3)*U.^1+C(4);
figure(1),plot(U,I,'c:')
C
C = polyfit(Udk,Idk,3)
I = C(1)*U.^3+C(2)*U.^2+C(3)*U.^1+C(4);
I = polyval(C,U); % dara to pašu ko iepriekšējā rindiņa
%% Cikli
% while (nosacījums)
% beigas norāda ar "end"
a = 10;
while (a>2)
disp(['Sveiks, a = ',num2str(a)]);
a = a-1;
end
%% "for" cikls
% for i=1:0.5:5
% beigās norāda ar "end"
A = [1 3 7 9];
% for Ai=A
for i = 1:0.5:5
fprintf('Sveiks i ir %g\n',i);
end
A = [1 3 7 9];
for Ai = A
fprintf('Sveiks Ai ir %g\n',Ai);
end
%% "parfor" - Nolasa procesora kodolu skaitu un palaiž kodu uz visiem procesora kodoliem.
parfor i = 1:10
fprintf('i = %g\n',i);
end
tic
toc
tic; for i = 1:10,pause(1),end,toc
tic; parfor i = 1:10,pause(1),end,toc
