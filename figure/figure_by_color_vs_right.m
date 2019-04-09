f = figure;

for i = [Organ.PozdlznaLava Organ.PriecnaLava]
    boxplot(vs_stavec(i, :), color_labels);

    x = sprintf('%s podľa farby voči pravej obličke', char(organs(i+1)));
    xlabel(x);
    ylabel('Výsledok [-]');
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/by_color/%s.png', char(Organ(i)))));
end
    
close(f);
