a = input("Enter a :");
b = input("Enter b :");
c = input("Enter c :");
if a == 0 && b == 0
    disp("There is no equation")
elseif a == 0
    x = -c / b;
    disp("Solution x is :")
    disp(x)
else
    delta = b ^ 2 - 4 * a *c;
    if delta <0
        disp("There is no solution in R")
    elseif delta == 0
        x = -b / (2 * a);
        disp("Delta == 0 there is only 1 solution")
        disp(x)
    else
        x1 = (-b + sqrt(delta))/ (2 * a);
        x2 = (-b - sqrt(delta))/ (2 * a);
        disp("Delta > 0 there is 2 solutions")
        disp(x1)
        disp(x2)
    end
end