measurements = data(:,:,~digimizer);

file = fopen('data/csv/measurements.csv', 'w');

fprintf(file, 'Meranie\tPriemer\tStd. odchylka\n');

for i = 1:uint32(Organ.Size)
    x = measurements(i,:);
    fit = fitdist(x.', 'Normal');
    
    fprintf(file, '%s\t%f\t%f\n', char(organs(i)), fit.mean, fit.sigma);
end

fclose(file);
