% Student Name: Abinav Anil
% Student ID: 250964140

%Exercise 2: Part A
%Create a random matrix with value x is set to 
x=3;
y=randomMatrix(x);
checkM=isMagic(y);%Check if created matrix is a magic matrix
magicM = magic(3);%Create magic matrix
isMagic(magicM);%Check if its magic

%Creates a random matrix
function cmpMatrix = randomMatrix(n)
    p = randperm(n^2);
    cmpMatrix = reshape(p, [n,n]);
end

%Checks if matrix is magic
function M = isMagic(M)
    sumR = sum(M,1);
    sumC = sum(M,2);
    sumD = sum(diag(M));
    sumDI = sum(diag(flip(M)));
    checkVector = [sumR(1) sumC(1) sumD sumDI];
    all(sumR == sumR(1)) && all(sumC == sumC(1)) && all(sumD == sumDI) && all(checkVector == sumD)
end
    