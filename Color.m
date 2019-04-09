classdef Color < uint32
    enumeration
        TriBlackGoldWhite (0),
        BiBlackWhite      (1),
        BiBrownWhite      (2),
        BiGrayWhite       (3),
        Black             (4),
        White             (5),
        Striped           (6),
        
        Size              (7)
    end
    
    methods
        function ind = subsindex(obj)
            ind = uint32(obj);
        end
    end
end

