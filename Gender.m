classdef Gender < logical
    enumeration
        Male  (true)
        Female(false)
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

