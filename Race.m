classdef Race < uint32
    enumeration
        BT   (0),
        SBT  (1),
        AST  (2)
        
        Size (3)
    end
    
    methods
        function ind = subsindex(obj)
            ind = uint32(obj);
        end
    end
end
