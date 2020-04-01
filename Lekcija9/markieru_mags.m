h = get(gca,'Children');
% cik līnijas?
N = length(h);
% kā var iegūt konkrētas īpašības
% visas predefinētās vērtības:
markieri = set(h(1),'Marker');
for i = 1:N
    set(h(i),'Marker',markieri{i});
end