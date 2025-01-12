a = input("Enter a :");
b = input("Enter b :");
c = input("Enter c :");
Equation = Solver(a,b,c);
disp(Equation.solve());
Equation.draw(-10,0.1,10);
