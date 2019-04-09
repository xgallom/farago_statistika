classdef Bool < logical
    enumeration
        False (false),
        True  (true)
    end
    
    methods
        function ind = subsindex(obj)
            if logical(obj)
                ind = 0;
            else
                ind = 1;
            end
        end
    end
end

