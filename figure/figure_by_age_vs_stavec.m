f = figure;

for i = 1:uint32(Organ.Size)
    plot(age(:), vs_stavec(i,:), '+');

    x = sprintf('%s podľa veku voči stavcu', char(organs(i)));
    xlabel(x);
    ylabel('Výsledok [-]');
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/by_age/%s.png', char(Organ(i-1)))));
end
    
close(f);
