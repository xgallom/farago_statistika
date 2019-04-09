f = figure;

for i = 1:uint32(Organ.Size)
    boxplot(valid_avg(i, :), race_labels(~digimizer));

    x = sprintf('%s podľa rasy', char(organs(i)));
    xlabel(x);
    ylabel('Výsledok [cm]');
    
    saveas(f, sprintf('data/figures/by_race/%s.png', char(Organ(i-1))));
end
    
close(f);
