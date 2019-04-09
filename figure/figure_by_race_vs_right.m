f = figure;

for i = [Organ.PozdlznaLava Organ.PriecnaLava]
    boxplot(vs_right(i, :), race_labels);

    x = sprintf('%s podľa rasy voči pravej obličke', char(organs(i+1)));
    xlabel(x);
    ylabel('Výsledok [-]');

    saveas(f, sprintf('data/figures/by_race/%s.png', char(Organ(i))));
end

close(f);
