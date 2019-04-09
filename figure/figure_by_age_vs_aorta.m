f = figure;

for i = 1:uint32(Organ.Size)
    x = age(:);
    y = vs_aorta(i,:);
    
    plot(x, y, '+');
    
    hold on;
    
    X = [ones(length(x),1) x];
    b = X\(y.');
    
    plot(x, X*b);
    
    hold off;

    x = sprintf('%s podľa veku voči aorte', char(organs(i)));
    xlabel(x);
    ylabel('Výsledok [-]');
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/by_age/%s.png', char(Organ(i-1)))));
end
    
close(f);
