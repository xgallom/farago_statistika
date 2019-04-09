file = fopen(strcat(pdir, '/data/csv/by_age/measurements.csv'), 'w');

fprintf(file, 'Meranie\tPearson\tP-Hodnota\tDolny limit\tHorny limit\n');

for i = 1:uint32(Organ.Size)
    [R, P, RL, RU] = corrcoef(valid_avg(i,:), age(~digimizer));

    fprintf(file, '%s\t%f\t%f\t%f\t%f\n', ...
        char(organs(i)), R(2), P(2), RL(2), RU(2));
end

fclose(file);
