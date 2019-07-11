function [event_scan_number, event_value] = function3(E)
    %Open Effeciency check
    tic 
    
    %Count the input
    event_scan_number = find([Inf, diff(E)]~=0);
    
    %Count each event code in input
    event_value = E(event_scan_number);
    
    %Close Effeciency check
    toc
end

