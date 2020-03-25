%% Lekcija 
% Rokturu grafika
% Handle graphics
t = 0:0.01:2;
y = sin(2*pi*2*t);
plot(t,y)
h = plot(t,y);
h = plot(t,y)
whos
%% Ko var iesākt ar objekta rokturi?
get(h)
get(h,'Color')
set(h,'Color',[1 0 0])
get(h,'Color')
set(h,'LineWidth',10)
set(h,'LineWidth',5)
%% get() - iegūt visu īpašību sarakstu
%% get(h,'īpašības nosaukums') - iegūt konkrētās īpašības vērtību
%% set(h,'īpašības nosaukums','īpašības vērtība' - piem:[krāsas pēc R G B]) - uzstāda/maina konkrēto īpašību
set(h,'Marker','*')
set(h,'LineWidth',2)
set(h,'LineWidth',1)
set(h,'Marker','o')
set(h,'Marker','pentagram')
% Ja ir īpašība ar predefinētām vērtībām (piem., Marker) mēs varam iegūt tās predifenētās vērtības šādā veidā:
set(h,'Marker')
%% set(h,'īpašības nosaukums') - atgriež mums predefinēto īpašību sarakstu
get(h)
set(h,'MarkerSize',10)
set(h,'MarkerSize',20)
set(h,'MarkerSize',40)
set(h,'MarkerSize',5)
% Cits pieraksta veids
h.LineWidth
h.LineWidth = 5
h.Marker = 'o'
%% Objektu hierarhija
% h - līnijas rokturis
% ha - axis rokturis
ha = get(h,'Parent');
ha = get(h,'Parent')
get(ha)
set(ha,'Color',[0 1 0])
set(ha,'FontSize',20)
set(ha,'FontSize',10)
set(ha,'FontSize',1)
set(ha,'FontSize',5)
set(ha,'FontSize',15)
xlabel('t, sekundes')
set(ha,'XLabel')
get(ha,'XLabel')
ha.XLabel.String = 'beidzot sanāca';
ha.XLabel.String = 'beidzot sanāca'
%% Nākamais objekts hierarhijā
% figure
hf = get(ha,'Parent')
% mācīšos vairāk izmantot datu struktūru
hf.Color = [1 1 0]
% Data Structure vieglāk lietot, jo ir uzpeldošie logi pie pieraksta un viss labi ir saskatāms
get(hf)
hf.HandleVisibility = "off"
% Kā arī DataStructure piedāvā vērību variantu, kas ļooooti atvieglo darbību. Tāpat kā VisualStudio2019
hr = get(hf,'Parent')
hr.MonitorPositions
get(hr)
hr.PointerLocation
get(hr,'PointerLocation')
%% Kā var iegūt grafiskā objekta rokturi?
%1.pie objekta radīšanas
%1.) h = plot(t,y)
%2.) virzoties pa hierarhijas kāpnēm izmantojot "Parent-Children" īpašības
%2.) ha = get(h,'Parent')
%3.) root-am rokturis ir nulle
% figurai - rokturis ir 1,2,3,...
%4.) izmantojot: 
% gcf (get current figure handle)
% gca (get current axis handle)
% gco (get current object handle)
%5.) izmantojot "findobj" funkciju
get(hr)
get(0,'Children')
figure
get(0,'Children')
%% Kā var radīt vairākas figūras
figure
hf2 = figure
figure(100)
edit
testa_fails
set(100,'Color', [0 1 0])
set(102,'Color', [0 1 0])
set(2,'Color', [0 1 1])
% Kā var aizvert visas figūras
for i = 1:200
end
close(1)
close(10)
for i = 1:200
try
close(i)
end
%% Kā var veidot vairākas axis
subplot(3,2,1)
%subplot('rindas','kolonnas','grafiks')
title('1')
plot(t,y)
subplot(3,2,2)
title('2')
subplot(3,2,3)
title('3')
subplot(3,2,4)
title('4')
subplot(3,2,5)
title('5')
subplot(3,2,6)
title('6')
% kā var pamainīt 4. subplot
plot(2*t,y)
plot(t,2*y)
plot(2*t,y)
% kā var pamainīt 5. subplot
subplot(3,2,5)
plot(2*t,y)
% kā var pamainīt 6. subplot
% caur rokturiem
get(gcf)
gcf
gca
get(gca,'Children')
get(gcf,'Children')
ha = get(gcf,'Children')
axis([1 2 3 4 ])
%axis([xmin xmax ymin ymax ])
axes(ha(1))
set(gca,'Color','green')
get(gca,'Position')
% x y width height
get(gca,'Units')
set(gca,'Units')
set(gca,'Position',[0.5 0 0.5 0.3])
%% nedaudz nepaspējām pabeigt
close