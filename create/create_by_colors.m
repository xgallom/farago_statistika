by_color = [{'Trikolor'}, {'Čierna, Biela'}, {'Hnedá, Biela'}, ...
    {'Sivá, Biela'}, {'Čierna'}, {'Biela'}, {'Žíhaná'}];

for i = 1:n
    color_labels(i) = by_color(color(i));
end
