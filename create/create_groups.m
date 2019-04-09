group = struct;

group.digimizer = false(length(digimizer), 2);
group.digimizer(:,Bool.False) = digimizer == false;
group.digimizer(:,Bool.True)  = digimizer == true;

group.gender = false(length(gender), 2);
group.gender(:,Gender.Male)   = gender == Gender.Male;
group.gender(:,Gender.Female) = gender == Gender.Female;

group.race = false(length(race), Race.Size);
group.race(:,Race.BT)  = race == Race.BT;
group.race(:,Race.AST) = race == Race.AST;
group.race(:,Race.SBT) = race == Race.SBT;

group.color = false(length(color), Color.Size);
group.color(:,Color.TriBlackGoldWhite) = color == Color.TriBlackGoldWhite;
group.color(:,Color.BiBlackWhite)      = color == Color.BiBlackWhite;
group.color(:,Color.BiBrownWhite)      = color == Color.BiBrownWhite;
group.color(:,Color.BiGrayWhite)       = color == Color.BiGrayWhite;
group.color(:,Color.Black)             = color == Color.Black;
group.color(:,Color.White)             = color == Color.White;
group.color(:,Color.Striped)           = color == Color.Striped;
