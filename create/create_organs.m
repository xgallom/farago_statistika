organs = [
        {'Pozdĺžna Ľavá'}
        {'Priečna Ľavá'}
        {'Kôra'}
        {'Aorta'}
        {'Stavec'}
        {'Pozdĺžna Pravá'}
        {'Priečna Pravá'}
];

valid_avg_labels = repmat(organs, 1, length(valid_avg));
labels = repmat(organs, 1, length(name));
