function [w, e, y] = adaline(P, w, d, eta, iter)
    for epoca=1:iter
        ep = 0;
        for i=1:size(P, 2)
            y(i) = w' * P(:, i);

            e(i) = d(i) - y(i);
            if e(i) > 0 || e(i) < 0
                ep = ep + 1;
                w = w + eta*e(i)*P(:, i);
            end
        end

        if ep == 0
            break;
        end
    end
