function y = signo(v)
    if length(v) > 1
        for i=1:length(v)
            if v(i) >= 0
                y(i) = 1;
            else
                y(i) = -1;
            end
        end
    else
        if v >= 0
            y = 1;
        else
            y = -1;
        end
    end
