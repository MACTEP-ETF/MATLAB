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

N =

     5

Udk = [2 1.85 1.48 1 0];

Idk = [21.2 10 1.7 0.3 0]*1e-3;
%% Vandermonda matrica (Veiksim pierakstu matlabā)
X = vander(Udk)

X =

   16.0000    8.0000    4.0000    2.0000    1.0000
   11.7135    6.3316    3.4225    1.8500    1.0000
    4.7979    3.2418    2.1904    1.4800    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000
         0         0         0         0    1.0000

Y = Idk'

Y =

    0.0212
    0.0100
    0.0017
    0.0003
         0

%% Lineāru vienādojumu sistēmu, kas ir pierakstītā matricu veidā var atrast ar "\"
% X*C = Y; kur C ir nezināmie
C = X\Y % šeit ir apslēpta VS risināšana

C =

    0.0330
   -0.1315
    0.1737
   -0.0749
         0

%% Ieliksim to polinomā un uzzīmēsim rezultātu
U = 0:0.01:2;
I = C(1)*U.^4+C(2)*U.^3+C(3)*U.^2+C(4)*U+C(5);
figure(1)
figure(1),plot(U,I)
hold on
plot(U,I,':')
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

N =

     5

Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
%% Vandermonda matrica (Veiksim pierakstu matlabā)
X = vander(Udk)

X =

   16.0000    8.0000    4.0000    2.0000    1.0000
   11.7135    6.3316    3.4225    1.8500    1.0000
    4.7979    3.2418    2.1904    1.4800    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000
         0         0         0         0    1.0000

Y = Idk'

Y =

    0.0212
    0.0100
    0.0017
    0.0003
         0

%% Lineāru vienādojumu sistēmu, kas ir pierakstītā matricu veidā var atrast ar "\"
% X*C = Y; kur C ir nezināmie
C = X\Y % šeit ir apslēpta VS risināšana

C =

    0.0330
   -0.1315
    0.1737
   -0.0749
         0

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

Udk =

    2.0000    1.8500    1.4800    1.0000         0

Idk

Idk =

    0.0212    0.0100    0.0017    0.0003         0

Udk(4)=[];
Idk(4)=[];
Udk

Udk =

    2.0000    1.8500    1.4800         0

Idk

Idk =

    0.0212    0.0100    0.0017         0

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

C =

    0.0164
   -0.0389
    0.0228
         0

C = polyfit(Udk,Idk,3)

C =

    0.0164   -0.0389    0.0228         0

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
Sveiks, a = 10
Sveiks, a = 9
Sveiks, a = 8
Sveiks, a = 7
Sveiks, a = 6
Sveiks, a = 5
Sveiks, a = 4
Sveiks, a = 3
%% "for" cikls
% for i=1:0.5:5
   % beigās norāda ar "end"
A = [1 3 7 9];
% for Ai=A
for i = 1:0.5:5
fprintf('Sveiks i ir %g\n',i);
end
Sveiks i ir 1
Sveiks i ir 1.5
Sveiks i ir 2
Sveiks i ir 2.5
Sveiks i ir 3
Sveiks i ir 3.5
Sveiks i ir 4
Sveiks i ir 4.5
Sveiks i ir 5
A = [1 3 7 9];
for Ai = A
fprintf('Sveiks Ai ir %g\n',i);
fprintf('Sveiks Ai ir %g\n',Ai);
end
Sveiks Ai ir 5
Sveiks Ai ir 1
Sveiks Ai ir 5
Sveiks Ai ir 3
Sveiks Ai ir 5
Sveiks Ai ir 7
Sveiks Ai ir 5
Sveiks Ai ir 9
%% "parfor" - Nolasa procesora kodolu skaitu un palaiž kodu uz visiem procesora kodoliem. 
parfor i = 1:10
fprintf('i = %g\n',i);
end
Starting parallel pool (parpool) using the 'local' profile ... 
i = 10
i = 9
i = 8
i = 7
i = 6
i = 5
i = 4
i = 3
i = 2
i = 1
tic
toc
Elapsed time is 0.005069 seconds.
tic; for i = 1:10,pause(1),end,toc
Elapsed time is 10.050519 seconds.
tic; parfor i = 1:10,pause(1),end,toc
Starting parallel pool (parpool) using the 'local' profile ... 
