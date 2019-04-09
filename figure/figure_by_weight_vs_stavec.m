f = figure;

for i = 1:uint32(Organ.Size)
    x = weight(:);
    y = vs_stavec(i,:).';
    
    plot(x, y, '+');

    hold on;
    
    X = [ones(length(x), 1) x];
    b = X\y;
    reg(i(1),:) = b;
    plot(x, X*b);
    
    hold off;

    y = sprintf('%s [cm]', char(organs(i)));
    xlabel('Hmotnosť [kg]');
    ylabel(y);
    
    saveas(f, strcat(pdir, ...
        sprintf('/data/figures/by_weight/vs_stavec/%s.png', char(Organ(i-1)))));
end
    
close(f);
