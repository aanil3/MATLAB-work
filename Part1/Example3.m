% Student Name: Abinav Anil
% Student ID: 250964140

%Exercise 3
%Set Base X and function min and max
x_min = (2*0^3)-(5*0^2)+(5*(exp(0/2))) + (2*cos(4*0)); 
x_max = (2*0^3)-(5*0^2)+(5*(exp(0/2))) + (2*cos(4*0));
f_min=0;
f_max=0;

%Create for loop that checks if for every step there is a new min or max
for x=0:0.1:3
    fx = (2*(x^3))-(5*(x^2))+(5*(exp(x/2))) + (2*cos(4*x));
    if fx < x_min
        x_min = x;
        f_min = fx;
    end
    if fx > x_min
        x_max = x;
        f_max = fx;
    end
end
%Create print statement that prints out the min and max values
fprintf(['x_min = %f'...
         'f_min is %.1f \n' ...
        'x_max = %f' ...
         'f_max = %.1f \n'] ...
         ,x_min,f_min,x_max,f_max);