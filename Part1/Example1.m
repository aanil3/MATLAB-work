% Student Name: Abinav Anil
% Student ID: 250964140

%Exercise 1: Part A
f = 35;
c = 5/9*(f-32)

%Exercise 1: Part B
M = [6 1 5 5; 2 7 1 5; 6 3 1 7; 1 5 4 1];
v = [1 2 3 4];
product = v*M

vT = transpose(v);
product = M*vT

%Exercise 1: Part C
M = [11 2 9; 5 11 2; 3 6 11];
M(M>10)= 0

M = [1 45 5; 12 5 1; 5 9 21]
M(M>10)= 0

M = [3 6 16; 1 16 2; 1 6 61];
M(M>10)= 0

%Exercise 1: Part D
M = [11 2 9; 5 11 2; 3 6 11];
M(rem(M, 2) == 0)= 0

M = [1 45 6; 12 5 1; 4 9 21];
M(rem(M, 2) == 0)= 0

M = [3 6 16; 1 16 2; 1 6 61];
M(rem(M, 2) == 0)= 0