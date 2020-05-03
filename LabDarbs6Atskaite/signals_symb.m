function signals_symb
t = 0:0.01:6.0;
syms t_const t_noise t_sin t_zero t_saw t_simb

% konstantes signāls
int_const = int(3,t_const,0,1);
int_const_ef = int(3^2,t_const,0,1);

% trokšņa signāls
int_noise = 0;
int_noise_ef = 0;

% sinusoīda
A0=0; A=3.0;
T = (3.5-3.0)/1.5; % T=1/3
f = 1/T; % f=3
delay=3.0;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
int_sin=int(y_sin,t_sin,3,3.5);
int_sin_ef=int(y_sin^2,t_sin,3,3.5);

% nuļļu signāls
int_zero = 0;
int_zero_ef = 0;

% lineāri mainīga funkcija
k = (0.25-0)/(5.5-6.0); % slīpuma koeficients
delay = 6.0; % sākumpunkta pacelšana uz 0.5/2
y_saw = k*(t_saw - delay);
int_saw = int(y_saw,t_saw,5.5,6);
int_saw_ef = int(y_saw^2,t_saw,5.5,6);

signala_vid_patiesa = 1/(t(end)-t(1))*(int_const+int_noise+int_sin+int_zero+int_saw);
signala_efektiva = sqrt(1/(t(end)-t(1))*(int_const_ef+int_noise_ef+int_sin_ef+int_zero_ef+int_saw_ef));

fprintf("Signāla vidējā patiesā vērtība: %0.4f\n",signala_vid_patiesa);
fprintf("Signāla patiesā efektīvā vērtība: %0.4f\n",signala_efektiva);