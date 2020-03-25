%% laboratorijas darbs Nr. 5.
% Nelineāras shēmas simulācija.
% Vladimirs Fedorovičs, REBM02, 041RDB182

function lab5
global E R i0 a

Ud = 2;
Id = 0.18;

R=1; 
i0=3e-06; 
a=log((Id + 1)/i0)/Ud; % a = solve(Id==i0*exp(a*Ud)-1,a)
t = 0:0.01:6;
Et = lab3_fun; % jāievieto lab3_fun

URm = [];
for E = Et
    UR = newmet5;
    URm = [URm,UR];
end
plot(t,Et,t,URm)
legend('Et','UR')
axis([-0 6 -3.5 3.5])


function x0 = newmet5
global E R i0 a

epsilon = 1e-3; % mūsu izvēlētā precizitāte
x0 = 0;
delta = funx(x0)/fund(x0);
while(abs(delta)>epsilon)
    delta = funx(x0)/fund(x0);
    x0 = x0-delta;
end

function fx = funx(UR)
global E R i0 a
fx = i0*(exp(a*(E-UR))-1)-UR/R;


function fx = fund(UR)
global E R i0 a
fx = - 1/R - a*i0*exp(a*(E - UR));

%% Secinājums
% Esmu iemācījies ar MatLab palīdzību simulēt nelineāras shēmas. Kā arī,
% esmu iemācījies apvienot vairākas funkcijas vienā "skript" failā.