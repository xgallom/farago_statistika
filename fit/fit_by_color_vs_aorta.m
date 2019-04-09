for i = 1:uint32(Organ.Size)
    [p, tbl] = anova1(vs_aorta(i,:), color);
    
    writecell(tbl, ...
        sprintf('%s/data/csv/by_color/%s.csv', pdir, char(Organ(i-1))));
end
