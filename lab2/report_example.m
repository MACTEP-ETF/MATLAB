%% 1. laboratorijas darbs
%% Mērījumu datu apstrāde
%% Darba merķi:
% * iemācīties apstrādāt mērījumu datus,
% * iemācīties veidot atskaites izmantojot report generator,
% * iemācīties nolasīt datus no grafika.
%% Dots sekojošais grafiks:
% http://www.farnell.com/datasheets/1971453.pdf?_ga=2.234866461.206424558.1581426258-100471782.1581426258
%
% <<../Grafiks.png>>
%
B = imread('Grafiks_Cropped.png');
figure(1),image([-90,90],[120,0],B);
set(gca,'YDir', 'normal');
[x,y] = ginput(15);
figure(1), close;
tx=-90:0.01:90;
C = polyfit(x,y,4);
RelIntY = polyval(C,tx);
figure(2),plot(tx, RelIntY,'-r',x,y,"o")
title('Spatial radiation pattern for deep red lambertian')
xlabel('Angular Displacement (deg)')
ylabel('Relative Intensity (%)')
legend('Deep Red (LXM3-PD01)')
grid;
%% Polinoma koeficienti
C
%% Secinājumi:
% * Iemācījos nolasīt grafiku no attēla ar "imread()" funkciju, nolasīt mērījumus ar "ginput()" funkciju, un zīmēt grafiku izmantojot papildfunkcijas "polifit()", "polyval()", "plot()" un citus; 
% * Kā arī iemācījos pielikt aprakstus asīm un virsrakstu grafikam;
