files = dir(strcat(pdir, '/data/input/input_*.m'));

n = length(files);

name      = string.empty;
age       = [];
gender    = Gender.empty;
color     = Color.empty;
race      = Race.empty;
weight    = [];
digimizer = logical.empty;
data      = zeros(7, 3, 2);

for x = 1:n
    script = strcat(pdir, sprintf('/data/input/%s', files(x).name));
    run(script);
end
