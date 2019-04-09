f = figure;

for i = 1:uint32(Organ.Size)
    plot(age(:), vs_stavec(i,:), '+');

    xlabel('vek [roky]');
    ylabel(sprintf('%s voči stavcu [-]', char(organs(i))));
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/by_age/vs_stavec/%s.png', char(Organ(i-1)))));
end
    
close(f);
