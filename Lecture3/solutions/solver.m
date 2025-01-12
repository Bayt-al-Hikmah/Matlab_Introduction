function [result] = solver(a,b,c)
if a == 0 && b == 0
    disp("There is no equation")
    result = "There is no equation";
elseif a == 0
    x = -c / b;
    disp("Solution x is :")
    result = x;
else
    delta = b ^ 2 - 4 * a *c;
    if delta <0
        result = "There is no solution in R";
    elseif delta == 0
        x = -b / (2 * a);
        result = x;
    else
        x1 = (-b + sqrt(delta))/ (2 * a);
        x2 = (-b - sqrt(delta))/ (2 * a);
        result = [x1,x2];

    end
end
end

