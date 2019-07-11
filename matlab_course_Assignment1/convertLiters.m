function [converted_value] = convertLiters(liters, varargin)

%CONVERTLITERS converts value in liters to milliliters, microliters or
%nanoliters.

if nargin == 0
    
    error('No input');
    
elseif nargin == 1 && isnumeric(liters)
    
    converted_value = liters*1000;
    
elseif nargin > 1
    
    if varargin == "micro"
        
        converted_value = liters*1000000;
        
    elseif varargin == "nano"
        
        converted_value = liters*1000000000;
        
    else
        
        error('Second input variable must be micro or nano');
    end
    
else
    error('First input must be an array of numbers');
end

end
