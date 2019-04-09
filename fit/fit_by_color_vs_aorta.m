file = fopen(strcat(pdir, '/data/csv/by_color/vs_aorta.csv'), 'w');

fprintf(file, 'Meranie\tFarba\tPriemer\tStd. odchylka\n');

for i = 1:uint32(Organ.Size)
    fprintf(file, '%s\n', char(organs(i)));
    
    for j = 1:uint32(Color.Size)
        x = vs_aorta(i,:,color==(j-1));
        
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
