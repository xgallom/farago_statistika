for i = 1:uint32(Organ.Size)
    vs_aorta(i,:) = avg(i,:) ./ avg(Organ.Aorta,:);
    vs_stavec(i,:) = avg(i,:) ./ avg(Organ.Stavec,:);
end

vs_right(Organ.PozdlznaLava,:) = ...
    avg(Organ.PozdlznaLava,:) ./ avg(Organ.PozdlznaPrava,:);
vs_right(Organ.PriecnaLava,:) = ...
    avg(Organ.PriecnaLava,:) ./ avg(Organ.PriecnaPrava,:);
