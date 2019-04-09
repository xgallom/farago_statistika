for i = 1:uint32(Organ.Size)
    [p, tbl] = anova1(vs_right(i,:), race);
    
    writecell(tbl, ...
        sprintf('%s/data/csv/by_race/vs_right/%s.csv', pdir, char(Organ(i-1))));
end
