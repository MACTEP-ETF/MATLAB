%% Noslēdzošā darbs (6. lab. darbs)

% Es izslēgšu visus brīdinājumus, lai nepiegrūžotu atskaiti ar nevajadzīgām
%rindām (3. uzdevums un SIMULINKs izmet brīdinājumus)
warning('off','all');

% Sākumā vizualizēšu sava signāla funkciju
signals;
axis([0 6 -3.5 3.5])

%% 1. Signāla patieso vidējo un patieso efektīvo vērtību aprēķināšana izmantojot simbolisko integrēšanas metodi
clear % atmiņas atbrīvošana no mainīgiem
signals_symb % palaižu funkciju no cita faila

%% 2. Vidējo un efektīvo vērtības aprēķins ar 3c formulu un rezultātu noformēšana tabulas veidā
clear % atmiņas atbrīvošana no mainīgiem
t = 0:0.01:6.0;
signala_rokturis = @(t) signals(t);
signala_rokturis_ef = @(t) signals(t).^2;

dt = [0.1 0.01 0.001];

% vidējā
for dtc = dt
t = t(1):dtc:t(end);
N = length(t);
% soļu platums
h = (t(end)-t(1))/(N-1);
signala_vid3c = 1/(N-1)*sum(signala_rokturis(t(1:end-1))+h/2);
% izvadīsim tabulas veidā
fprintf('Signāla vidējā vērtība (3c) = %.4f\tpie laika soļa = %g\n', signala_vid3c, dtc);
end

% efektīvā
for dtc = dt
t = t(1):dtc:t(end);
N = length(t);
% soļu platums
h = (t(end)-t(1))/(N-1);
signala_ef_3c = sqrt(1/(N-1)*sum(signala_rokturis_ef(t(1:end-1))+h/2));
% izvadīsim tabulas veidā
fprintf('Signāla efektīvā vērtība (3c) = %.4f\tpie laika soļa = %g\n', signala_ef_3c, dtc);
end

%% 3. Ar MatLab integrēšanas funkcijas palīdzību aprēķināšu vidējo un efektīvo vērtības pie 'RelTol' = [1e-1 1e-2 1e-3]
clear % atmiņas atbrīvošana no mainīgiem
t = 0:0.01:6.0;
signala_rokturis = @(t) signals(t);
signala_rokturis_ef = @(t) signals(t).^2;
tol = [1e-1 1e-2 1e-3];

% vidējā
for tolc = tol
    t = t(1):tolc:t(end);
    signala_vid = 1/(t(end)-t(1))*integral(signala_rokturis,t(1),t(end),'RelTol', tolc);
    fprintf('Signāla vidējā vertība ar MatLab funkciju: %0.4f\tpie tol=%g\n', signala_vid,tolc);
end

% efektīvā
for tolc = tol
    signala_ef = sqrt(1/(t(end)-t(1))*integral(signala_rokturis_ef,t(1),t(end),'RelTol', tolc));
    fprintf('Signāla efektīvā vertība ar MatLab funkciju: %0.4f\tpie tol=%g\n', signala_ef,tolc);
end

%% 4.a. Simulink vidējā
clear % atmiņas atbrīvošana no mainīgiem
t = 0:0.01:6.0;
signala_rokturis = @(t) signals(t);
signala_rokturis_ef = @(t) signals(t).^2;

signala_simulink_vid
sim('signala_simulink_vid');
open_system('signala_simulink_vid/Integrālis')
open_system('signala_simulink_vid/Gala rezultāts')

%% 4.b. Simulink efektīvā
signala_simulink_ef
sim('signala_simulink_ef');
open_system('signala_simulink_ef/Integrālis')
open_system('signala_simulink_ef/Gala rezultāts')

%% 5. Secinājumi
% Tātad...

% 1.) Manuprāt, formulu efektīvās vērtības aprēķinam esmu uzrakstījis
% pareizi, bet nesaprotu, kādēļ ir tik liela vērtību atšķirība starp
% aprēķināto vidējo un efektīvo.

% 2.) Grūti salīdzināt rezultātus starp aprēķinu metodēm, jo trokšnu
% signāls manā signālā, manuprāt, izkropļo gala vērtības ar savu "rand"
% funkciju. Apiet šo funkciju man, diemžēl, neizdevās.

% 3.) Kā redzams, 2. uzdevuma signāla vidējās vērtības aprēķins ir diezgan 
% neprecīzs pie liela laika soļa. Tikai pie 0.001 rezultāts ir jau 
% sakarīgs un praktiski sakrīt ar 3. uzdevuma aprēķiniem.

% 4.) Lai iegūtu kaut cik līdzīgu rezultātu ar SIMULINK, parametros biju
% uzstādījis konkrētu soli = 0.01, tad arī SOLVE lodziņš uzzīmē identisku
% grafiku mana signālam.

% 5.) Nedaudz vairāk esmu iepazinies ar SIMULINK, un secinu, ka tā ir ļoti
% noderīga interaktīva vide aprēķiniem. 