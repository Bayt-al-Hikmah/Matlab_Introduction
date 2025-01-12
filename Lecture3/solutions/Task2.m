n = input("Enter n :");
for i = 2 : n
    prime = 1;
    m = floor(sqrt(i));
    for j = 2:m
        if mod(i,j) == 0
            prime = 0;
            break 
        end
    end
    if prime 
        disp(i)
    end
end
        