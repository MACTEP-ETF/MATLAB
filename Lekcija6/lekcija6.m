mkdir Lekcija6
cd Lekcija6/
cd ..
cd Lekcija6/
%% Interpolācija ar kubiskiem splainiem
a = 5; i0 = 1e-6;
Ud = 0:0.01:2;
Id = i0*(exp(a*Ud)-1);
Udk = [2 1.85 1.48 1 0.4261 0];
Idk = [21.1 10 1.7 0.3 0.00738 0]*1e-3;
plot(Ud,Id,Udk,Idk,'o')

hold on
%% Pielaikosim splainus
% uztaisīsim "x" vektoru ar sīkāku soli
U = 0:0.01:2;
I = spline(Udk,Idk,U); % katram U aprēķinās attiecīgo I vērtību
plot(U,I,':')
%% Analizēsim kas ir splaini


%% Uzzīmēsim katru splainu atsevišķi
%% kā tikt pie splainu koeficientiem?
pp = spline(Udk,Idk) % atdos splaina koeficientu

pp = 

  struct with fields:

      form: 'pp'
    breaks: [0 0.4261 1 1.4800 1.8500 2]
     coefs: [5×4 double]
    pieces: 5
     order: 4
       dim: 1

%% Uzzīmēsim katru splainu atsevišķi
%% 1. splains
x1=0:0.01:0.4261;
x1=pp.breaks(1):0.01:pp.breaks(2); % tas pats kas iepriekšējā rindā, bet gudrākā rakstā
s1 = polyval(pp.coefs(1,:),x1); % 1. splainam paņemsim pirmo rindu ar koeficientiem
h11 = plot(x1,s1,'r');set(h11,'LineWidth',15)
%% 2. splains
x2=pp.breaks(2):0.01:pp.breaks(3); % nākamais punktu pāris
s2 = polyval(pp.coefs(2,:),x2-0.4261); % 2. splainam paņemsim atbilstošo otro rindu ar koeficientiem
h12 = plot(x2,s2,'g');set(h12,'LineWidth',15)
x3=pp.breaks(3):0.01:pp.breaks(4);
s3 = polyval(pp.coefs(3,:),x3-1); 
h13 = plot(x3,s3,'b');set(h12,'LineWidth',15)
h13 = plot(x3,s3,'b');set(h13,'LineWidth',15)
x4=pp.breaks(4):0.01:pp.breaks(5);
s4 = polyval(pp.coefs(4,:),x4-1.48);
h14 = plot(x4,s4,'y');set(h14,'LineWidth',15)
x5=pp.breaks(5):0.01:pp.breaks(6);
s5 = polyval(pp.coefs(5,:),x5-1.85);
h15 = plot(x5,s5,'c');set(h15,'LineWidth',15)
%% atkārtosim to pašu tikai plašākos intervālos
delete(h15)
delete(h14)
delete(h13)
delete(h12)
delete(h11)
%% 1. splains
x1=0:0.01:2;
s1 = polyval(pp.coefs(1,:),x1);
h11 = plot(x1,s1,'r');set(h11,'LineWidth',15)
%% 2. splains
x2=0:0.01:2;
s2 = polyval(pp.coefs(2,:),x2-0.4261);
h12 = plot(x2,s2,'g:');set(h12,'LineWidth',15)
x3=0:0.01:2;
s3 = polyval(pp.coefs(3,:),x3-1);
h13 = plot(x3,s3,'b');set(h13,'LineWidth',15)
x4=0:0.01:2;
s4 = polyval(pp.coefs(4,:),x4-1.48);
h14 = plot(x4,s4,'y:');set(h14,'LineWidth',15)
ylim([0 22e-3])
x5=0:0.01:2;
s5 = polyval(pp.coefs(5,:),x4-1.85);
h15 = plot(x5,s5,'c--');set(h15,'LineWidth',15)
ylim([-22e-3 22e-3])
ylim([-22e-3 22e-3]) % apmēram tā pat kā "axis", bet tikai y asij
%% Nākamais eksperiments
%% pārbaudīsim vai 1. un 2. atvasinājumi sakrīt
%% Paņemsim sinusoīdas līkni
%% kurai mērījumu punktus izvēlēsimies
%% maksimumu un minimumu punktos

figure
t = 0:0.01:2*pi;
y = sin(3*t);

tm = 0+pi/6:2*pi/6:2*pi-pi/6; % mērījuma punkti priekš "t"
ym = sin(3*t);
plot(t,y,tm,ym,'o')
Error using plot
Vectors must be the same length.
 
ym = sin(3*tm);
plot(t,y,tm,ym,'o')
% tagad veidosim splainu aproksimāciju
figure
subplot(4,1,1)
tt = min(tm):0.01:max(tm);
yy = spline(tm,ym,tt);
plot(tt,yy,tm,ym,'o')
%% zīmēsim 1. atvasinājumu
subplot(4,1,2)
diff([1 2 4 5 8 9]) % nav tas pats kā simboliskā matemātikā

ans =

     1     2     1     3     1

yyd = diff(yy);
plot(tt,yyd)
Error using plot
Vectors must be the same length.
 
plot(tt(1:end-1),yyd,tm,ym,'o')
plot(tt(1:end-1),yyd)
%% zīmēsim 2. atvasinājumu
subplot(4,1,3)
yydd = diff(yyd);
plot(tt(1:end-2),yydd)
%% zīmēsim 3. atvasinājumu
subplot(4,1,4)
yyddd = diff(yydd);
plot(tt(1:end-4),yyddd)
Error using plot
Vectors must be the same length.
 
plot(tt(1:end-3),yyddd)



%% citas splainu funkcijas
%% pchip
% bet 2. atvasinājums nav nepārtraukts



figure
subplot(3,1,1)
yy = pchip(tm,ym,tt);
plot(tt,yy,tm,ym,'o')
subplot(3,1,2)
% 1. atv.
plot(tt(1:end-1),diff(yy))
% 2. atv.
subplot(3,1,3)
plot(tt(1:end-2),diff(diff(yy)))
cftool % curve fitting tool
