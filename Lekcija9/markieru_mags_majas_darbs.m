h = get(gca,'Children'); % gca - Get Current Axes
N = length(h);
markieri_linijas = set(h(1),'LineStyle');
% uzlikšu melnu krāsu, padarīšu nedaudz biezākas līnijas un nomainīšu
% līniju stilu
for i = 1:N
    set(h(i),'Color','k');
    set(h(i),'LineWidth',1.5);
    set(h(i),'LineStyle',markieri_linijas{i});
end