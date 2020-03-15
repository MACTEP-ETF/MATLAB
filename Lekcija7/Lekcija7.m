%% 7. lekcija
% Datu interpolācija
% Pieņemsim ka mums ir doti sekojoši dati
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
% Pieņemsim ka ir jāatrod I-? pie U = 0.5
(0.3e-3 - 0)/(1-0)*(0.5-0)+0e-3
% Matlabā, lai veiktu datu interpolāciju ir speciāla funkcija
% interp1()
% y_kas_ir_jaatrod = interp1(x,y,x_pie_kura_jaatrod,metode)
I = interp1(Udk,Idk,0.5,'linear')
I = interp1(Udk,Idk,0.5,'spline')
I = interp1(Udk,Idk,0.5,'pchip')
I = interp1(Udk,Idk,0.5,'nearest')
I = interp1(Udk,Idk,0.5,'next')
I = interp1(Udk,Idk,0.5,"previous")
%% Lineārā interpolācija (illustrācija)
UU = 0:0.01:2;
II = interp1(Udk,Idk,UU,"linear");
plot(Udk,Idk,"o",UU,II,"g")
%% Splainu interpolācija
II = interp1(Udk,Idk,UU,"spline");
plot(Udk,Idk,"o",UU,II,"g")
hold on
%% pchip interpolācija
II = interp1(Udk,Idk,UU,"pchip");
plot(UU,II,"c")
plot(UU,II,"c","LineWidth",3)
II = interp1(Udk,Idk,UU,"linear");
plot(UU,II,"r:")
plot(UU,II,"r:","LineWidth",2)
%% Tuvākā punkta interpolācija (noapaļošana)
II = interp1(Udk,Idk,UU,"nearest");
plot(UU,II,"b","LineWidth",3)
%% Interpolācija uz priekšu
II = interp1(Udk,Idk,UU,"next");
plot(UU,II,"k","LineWidth",3)
%% 7. lekcija
% Datu interpolācija
% Pieņemsim ka mums ir doti sekojoši dati
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
% Pieņemsim ka ir jāatrod I-? pie U = 0.5
(0.3e-3 - 0)/(1-0)*(0.5-0)+0e-3
% Matlabā, lai veiktu datu interpolāciju ir speciāla funkcija
% interp1()
% y_kas_ir_jaatrod = interp1(x,y,x_pie_kura_jaatrod,metode)
I = interp1(Udk,Idk,0.5,'linear')
I = interp1(Udk,Idk,0.5,'spline')
I = interp1(Udk,Idk,0.5,'pchip')
I = interp1(Udk,Idk,0.5,'nearest')
I = interp1(Udk,Idk,0.5,'next')
I = interp1(Udk,Idk,0.5,"previous")
%% Lineārā interpolācija (illustrācija)
UU = 0:0.01:2;
II = interp1(Udk,Idk,UU,"linear");
plot(Udk,Idk,"o",UU,II,"g")
%% Splainu interpolācija
II = interp1(Udk,Idk,UU,"spline");
plot(Udk,Idk,"o",UU,II,"g")
hold on
%% pchip interpolācija
II = interp1(Udk,Idk,UU,"pchip");
plot(UU,II,"c")
plot(UU,II,"c","LineWidth",3)
II = interp1(Udk,Idk,UU,"linear");
plot(UU,II,"r:")
plot(UU,II,"r:","LineWidth",2)
%% Tuvākā punkta interpolācija (noapaļošana)
II = interp1(Udk,Idk,UU,"nearest");
plot(UU,II,"b","LineWidth",3)
%% Interpolācija uz priekšu
II = interp1(Udk,Idk,UU,"next");
plot(UU,II,"k","LineWidth",3)
II = interp1(Udk,Idk,UU,"previous");
plot(UU,II,"g","LineWidth",3)
%% Datu filtrācija
a = 2>5
class(a)
whos
a = 2==5
a = 2==2
a = 2<5
%% Piemērs ar vektoriem
t = 0:7
tf = t>3
t(tf)
%% Datu filtrācija izmantošanas piemēri
%% 1. piemērs
% sinusoīda - jāizfiltrē vērtības, kas ir lielākas par 0
t = 0:0.01:1;
y = sin(2*pi*2*t);
plot(t,y)
yf = y>0; % y_filtrs
figure,plot(t,yf)
%% tai daļai, kas ir mazāka par 0
% piešķirsim vērtību x=0
% y(yf) - daļa, kas ir lielāka par 0
% y(~yf) - daļa, kas ir mazāka par 0
y(~yf) = 0;
y(~yf) = 0; % visām vērtībām kuriem
% ~yf ir vieninieki, tiek piešķirta cita vērtība
% Respektīvi, daļa kas ir zemāka par 0 pārvēršās par 0
% uzzīmēsim
figure,plot(t,y)
ylim([-1 1])
%% 2. piemērs
%% Telpiskās figūras
% uzzīmēsim 3D sfēru, un tad viņu nošķelsim
% datu filtrāciju, lai to nošķeltu
%%
% * sfēras konstruēšana
% sfēru apraksta
% x^2+y^2+z^2=R^2
R = 1
x = -1:0.01:1;
y = -1:0.01:1;
z = sqrt(R^2-(x.^2+y.^2));
plot3(x,y,z)
plot3(x,y,z,"LineWidth",3)
grid
%% x y nav neatkarīgi, līdz ar to nesanāca
% ilustrācijai samazināsim x,y soli
x = -1:0.5:1;
y = -1:0.5:1;
x
y
[X,Y]=meshgrid(x,y)
% atjaunosim smalku soli
x = -1:0.01:1;
y = -1:0.01:1;
[X,Y]=meshgrid(x,y);
Z = sqrt(R^2-(X.^2+Y.^2));
plot3(X,Y,Z)
mesh(X,Y,Z)
mesh(X,Y,abs(Z))
mesh(X,Y,real(Z))
%% novāksim kompleksus skaitļus
% to darīsim šādi:
% redzam, ka kompleksam skaitlim
% real(Z)==0
% Kā nezīmēt daļu no grafika
plot([1 2 3 4 5 6],[1 2 3 4 5 6])
plot([1 2 3 4 5 6],[1 2 NaN NaN 5 6])
0/0
1/0
%% pamatni (kompleksu daļu no sfēras)
% pārtaisīsim par NaN
ind = real(Z)==0;
Z(ind)=NaN;
mesh(X,Y,Z)
%% uzzīmēsim sfēras apakši (-sqrt)
Z2 = -sqrt(R^2-(X.^2+Y.^2));
ind2 = real(Z2)==0;
Z2(ind2)==NaN;
mesh([X,X],[Y,Y],[Z,Z2])
%% Datu filtrācija
a = 2>5
class(a)
whos
a = 2==5
a = 2==2
a = 2<5
%% Piemērs ar vektoriem
t = 0:7
tf = t>3
t(tf)
%% Datu filtrācija izmantošanas piemēri
%% 1. piemērs
% sinusoīda - jāizfiltrē vērtības, kas ir lielākas par 0
t = 0:0.01:1;
y = sin(2*pi*2*t);
plot(t,y)
yf = y>0; % y_filtrs
figure,plot(t,yf)
%% tai daļai, kas ir mazāka par 0
% piešķirsim vērtību x=0
% y(yf) - daļa, kas ir lielāka par 0
% y(~yf) - daļa, kas ir mazāka par 0
y(~yf) = 0;
y(~yf) = 0; % visām vērtībām kuriem
% ~yf ir vieninieki, tiek piešķirta cita vērtība
% Respektīvi, daļa kas ir zemāka par 0 pārvēršās par 0
% uzzīmēsim
figure,plot(t,y)
ylim([-1 1])
%% 2. piemērs
%% Telpiskās figūras
% uzzīmēsim 3D sfēru, un tad viņu nošķelsim
% datu filtrāciju, lai to nošķeltu
%%
% * sfēras konstruēšana
% sfēru apraksta
% x^2+y^2+z^2=R^2
R = 1
x = -1:0.01:1;
y = -1:0.01:1;
z = sqrt(R^2-(x.^2+y.^2));
plot3(x,y,z)
plot3(x,y,z,"LineWidth",3)
grid
%% x y nav neatkarīgi, līdz ar to nesanāca
% ilustrācijai samazināsim x,y soli
x = -1:0.5:1;
y = -1:0.5:1;
x
y
[X,Y]=meshgrid(x,y)
% atjaunosim smalku soli
x = -1:0.01:1;
y = -1:0.01:1;
[X,Y]=meshgrid(x,y);
Z = sqrt(R^2-(X.^2+Y.^2));
plot3(X,Y,Z)
mesh(X,Y,Z)
mesh(X,Y,abs(Z))
mesh(X,Y,real(Z))
%% novāksim kompleksus skaitļus
% to darīsim šādi:
% redzam, ka kompleksam skaitlim
% real(Z)==0
% Kā nezīmēt daļu no grafika
plot([1 2 3 4 5 6],[1 2 3 4 5 6])
plot([1 2 3 4 5 6],[1 2 NaN NaN 5 6])
0/0
1/0
%% pamatni (kompleksu daļu no sfēras)
% pārtaisīsim par NaN
ind = real(Z)==0;
Z(ind)=NaN;
mesh(X,Y,Z)
%% uzzīmēsim sfēras apakši (-sqrt)
Z2 = -sqrt(R^2-(X.^2+Y.^2));
ind2 = real(Z2)==0;
Z2(ind2)==NaN;
mesh([X,X],[Y,Y],[Z,Z2])
Z2 = -sqrt(R^2-(X.^2+Y.^2));
ind2 = real(Z2)==0;
Z2(ind2)=NaN;
mesh([X,X],[Y,Y],[Z,Z2])
%% Izgriezīsim gredzenu no sfēras
ind_gredzens = (Z > 0.5)&(Z<0.7);
Z_gradzens = Z;
Z_gradzens(~ind_gredzens)=NaN;
figure,mesh(X,Y,Z_gredzens)
zlim([-1 1])
Z_gredzens = Z;
Z_gredzens(~ind_gredzens)=NaN;
figure,mesh(X,Y,Z_gredzens)
zlim([-1 1])
ind_gredzens = (Z > 0.5)&(Z<0.7);
Z_gredzens = Z;
Z_gredzens(~ind_gredzens)=NaN;
figure,mesh(X,Y,Z_gredzens)
zlim([-1 1])