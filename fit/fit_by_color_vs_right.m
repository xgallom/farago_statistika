file = fopen(strcat(pdir, '/data/csv/by_color/vs_right.csv'), 'w');

fprintf(file, 'Meranie\tFarba\tPriemer\tStd. odchylka\n');

for i = [Organ.PozdlznaLava Organ.PriecnaLava]
    fprintf(file, '%s\n', char(organs(i+1)));
    
    for j = 1:uint32(Color.Size)
        x = vs_right(i,color==(j-1));
        
        if length(x) > 1
            fit = fitdist(x(:), 'Normal');

            fprintf(file, '\t%s\t%f\t%f\n', ...
                char(color_labels(j)), fit.mean, fit.sigma);
        else
            fprintf(file, '\t%s\t%f\t%f\n', ...
                char(color_labels(j)), x, 0);
        end
    end
end

fclose(file);
