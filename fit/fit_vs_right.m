file = fopen('data/csv/vs_right.csv', 'w');

fprintf(file, 'Meranie\tPriemer\tStd. odchylka\n');

for i = [Organ.PozdlznaLava Organ.PriecnaLava]
    x = vs_right(i,:);
    fit = fitdist(x.', 'Normal');
    
    fprintf(file, '%s\t%f\t%f\n', char(organs(i)), fit.mean, fit.sigma);
end

fclose(file);
