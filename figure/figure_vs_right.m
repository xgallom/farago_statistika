l = [labels(Organ.PozdlznaLava,:); labels(Organ.PriecnaLava,:)];
boxplot(vs_right(:), l(:));

xlabel('Pomer voči pravej obličke');
ylabel('Výsledok [-]');
