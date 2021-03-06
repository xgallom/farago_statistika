file = fopen(strcat(pdir, '/data/csv/vs_right/vs_stavec.csv'), 'w');

fprintf(file, 'Lava voci stavcu\tPrava voci stavcu\tPearson\tP-Hodnota\tDolny limit\tHorny limit\tRegresia sklon\tRegresia posun\n');

for i = [Organ.PozdlznaLava Organ.PriecnaLava; Organ.PozdlznaPrava Organ.PriecnaPrava]
    l = vs_stavec(i(1),:).';
    r = vs_stavec(i(2),:).';
    
    [R, P, RL, RU] = corrcoef(l, r);
    
    fprintf(file, '%s\t%s\t%f\t%f\t%f\t%f\t%f\t%f\n', ...
        char(organs(i(1))), char(organs(i(2))), R(2), P(2), RL(2), ...
        RU(2), reg(i(1),1), reg(i(1),2));
end

fclose(file);
