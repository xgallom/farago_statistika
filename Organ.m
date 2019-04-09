classdef Organ < uint32
    enumeration
        PozdlznaLava  (0),
        PriecnaLava   (1),
        Kora          (2),
        Aorta         (3),
        Stavec        (4),
        PozdlznaPrava (5),
        PriecnaPrava  (6),
        
        Size          (7)
    end
    
    methods
        function ind = subsindex(obj)
            ind = uint32(obj);
        end
    end
end

