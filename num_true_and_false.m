function [sum] = num_true_and_false(data,p1,p2)
% assumed only 2 parameters
sum = 0;
for c = 1:size(data,1)
    if (data(c,p1) == 1) & (data(c,p2) == 0)
        sum = sum + 1;
    end
end
end
