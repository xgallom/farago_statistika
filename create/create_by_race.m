
for i = 1:uint32(Race.Size)
    by_race(i) = {avg(:,race==(i-1))};
end

race_labels = arrayfun(@char, race, 'UniformOutput', false);
