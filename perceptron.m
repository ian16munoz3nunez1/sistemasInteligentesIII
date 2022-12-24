% Ian Mu;oz Nu;ez - Perceptron

function [w, e, y] = perceptron(P, w, d, eta, iter)
    for epoca=1:iter
        ep = 0;
        for i=1:size(P, 2)
            v(i) = w' * P(:, i);
            y(i) = escalon(v(i));

            e(i) = d(i) - y(i);
            if e(i) > 0 || e(i) < 0
                w = w + eta * e(i) * P(:, i);
                ep = ep + 1;
            end
        end

        if ep == 0
            break
        end
    end
