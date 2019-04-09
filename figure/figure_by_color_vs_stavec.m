f = figure;

for i = 1:uint32(Organ.Size)
    boxplot(vs_stavec(i, :), color_labels);

    x = sprintf('%s podľa farby voči aorte', char(organs(i)));
    xlabel(x);
    ylabel('Výsledok [-]');
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/by_color/%s.png', char(Organ(i-1)))));
end
    
close(f);
