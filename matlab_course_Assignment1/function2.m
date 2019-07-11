function [event_scan_number, event_value] = function2(E)
    %Open Effeciency check
    tic
    
    %Count each event code in input
    current_code_event = -1;
    event_scan_number = [];
    event_value = [];
    x = 1;
    while x < length(E)
        if E(x) ~= current_code_event
            event_scan_number = [event_scan_number, x];
            event_value = [event_value, E(x)]
            current_code_event = E(x);
        end
        x = x + 1;
    end
    
    %Close Effeciency check
    toc
end

