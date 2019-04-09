f = figure;

for i = 1:uint32(Organ.Size)
    x = age(:);
    y = vs_aorta(i,:);
    
    plot(x, y, '+');

    xlabel('vek [roky]');
    ylabel(sprintf('%s voči aorte [-]', char(organs(i))));
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/by_age/vs_aorta/%s.png', char(Organ(i-1)))));
end
    
close(f);
