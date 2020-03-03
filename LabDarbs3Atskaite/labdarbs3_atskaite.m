function y = labdarbs3_atskaite(t)
if nargin == 0 % number of input argument
    t = 0:0.01:6.0;
end
t_constf = (t>=0.0)&(t<1); t_const = t(t_constf);
t_noisef = (t>=1)&(t<3.0); t_noise = t(t_noisef);
t_sinf = (t>=3.0)&(t<3.5); t_sin = t(t_sinf);
t_zerof = (t>=3.5)&(t<5.5); t_zero = t(t_zerof);
t_sawf = (t>=5.5)&(t<=6.0); t_saw = t(t_sawf);
%% Konstantes signāls
y_const = zeros(size(t_const))+3.0;
%% trokšņa signāls
y_noise = 3.0*rand(size(t_noise))-1.5;
%% sinusoīda
A0=0; A=3.0;
T = (3.5-3.0)/1.5;
f = 1/T;
delay=3.0;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
%% Nuļļu signāls
y_zero = zeros(size(t_zero));
%% Lineāri mainīga funkcija
k = (0.25-0)/(5.5-6.0); % slīpuma koeficients
delay = 6.0; % sākumpunkta pacelšana uz 0.5/2
y_saw = k*(t_saw - delay);
%% apvienosim visu vienā vektorā
t = [t_const,t_noise,t_sin,t_zero,t_saw];
y = [y_const,y_noise,y_sin,y_zero,y_saw];
if nargout == 0 %number of output argument
    plot(t,y);
    grid;
    y = [];
end
axis([0 6 -3.5 3.5])