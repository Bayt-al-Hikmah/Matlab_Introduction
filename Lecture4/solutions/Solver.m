classdef Solver
    %UNTITLED9 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        a
        b
        c
    end
    
    methods
        function obj = Solver(a,b,c)
            %UNTITLED9 Construct an instance of this class
            %   Detailed explanation goes here
            obj.a = a;
            obj.b = b;
            obj.c = c;
        end
        
        function result = solve(obj)
            if obj.a == 0 && obj.b == 0
                disp("There is no equation")
                result = "There is no equation";
            elseif obj.a == 0
                x = -obj.c / obj.b;
                disp("Solution x is :")
                result = x;
            else
                delta = obj.b ^ 2 - 4 * obj.a *obj.c;
                if delta <0
                    result = "There is no solution in R";
                elseif delta == 0
                    x = -obj.b / (2 * obj.a);
                    result = x;
                else
                    x1 = (-obj.b + sqrt(delta))/ (2 * obj.a);
                    x2 = (-obj.b - sqrt(delta))/ (2 * obj.a);
                    result = [x1,x2];

                end
            end
        end
        function l = draw(obj,x1,p,x2)
            x = x1:p:x2;
            eq = obj.a * x .^ 2 + obj.b * x + obj.c;
            plot(x,eq)
        
        end
    end
end

