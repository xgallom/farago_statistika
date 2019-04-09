file = fopen('data/csv/by_race/vs_stavec.csv', 'w');

fprintf(file, 'Meranie\tRasa\tPriemer\tStd. odchylka\n');

for i = 1:uint32(Organ.Size)
    fprintf(file, '%s\n', char(organs(i)));
    
    for j = 1:uint32(Race.Size)
        x = vs_stavec(i,:,race==(j-1));
        fit = fitdist(x(:), 'Normal');

        fprintf(file, '\t%s\t%f\t%f\n', ...
            char(Race(j-1)), fit.mean, fit.sigma);
    end
end

fclose(file);
