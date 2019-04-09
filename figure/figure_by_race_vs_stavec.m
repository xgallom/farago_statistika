f = figure;

for i = 1:uint32(Organ.Size)
    boxplot(vs_stavec(i, :), race_labels);

    x = sprintf('%s podľa rasy voči stavcu', char(organs(i)));
    xlabel(x);
    ylabel('Výsledok [-]');
    
    saveas(f, sprintf('data/figures/by_race/%s.png', char(Organ(i-1))));
end
    
close(f);
