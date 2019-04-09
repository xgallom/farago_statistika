f = figure;

for i = [Organ.PozdlznaLava Organ.PriecnaLava; Organ.PozdlznaPrava Organ.PriecnaPrava]
    x = vs_stavec(i(2),:).';
    y = vs_stavec(i(1),:).';
    
    plot(x, y, '+');
    
    hold on;
    
    X = [ones(length(x), 1) x];
    b = X\y;
    reg(i(1),:) = b;
    plot(x, X*b);
    
    hold off;

    xlabel(sprintf('%s voči stavcu [-]', char(organs(i(2)+1))));
    ylabel(sprintf('%s voči stavcu [-]', char(organs(i(1)+1))));
    
    limits = [min(min(x), min(y))*0.95 max(max(x), max(y))*1.05];
    xlim(limits);
    ylim(limits);
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/vs_right/vs_stavec/%s.png', char(Organ(i(1))))));
end

close(f);
