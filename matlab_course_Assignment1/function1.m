function [event_scan_number, event_value] = function1(E)
    %Open Effeciency check
    tic
    
    %Count each event code in input
    current_code_event = -1;
    event_scan_number = [];
    event_value = [];
    for x = 1:length(E)
        if E(x) ~= current_code_event
            event_scan_number = [event_scan_number, x];
            event_value = [event_value, E(x)]
            current_code_event = E(x);
        end
    end
    
    %Close Effeciency check
    toc
end

