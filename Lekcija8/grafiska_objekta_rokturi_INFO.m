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