% 250964140
% Abinav Anil
%% Testing myGeomean(x) and myHarmmean(x)
x = [1 -1 2.3 4 -3 6.5];
[ind, gm] = myGeomean(x); %Get results from myGeomean
[ind, hm] = myHarmmean(x); %Get results from myHarmmean
tempArray = x(x>0); %convert x to all positive values so geomean and harmmean commands do not present errors
geomeanResult = geomean(tempArray)%Get geomean and harmmean results in order to verify earlier solutions
harmmeanResult = harmmean(tempArray)

x = [1 -5 7 2.3 5 9 -10];
[ind, gm] = myGeomean(x);
[ind, hm] = myHarmmean(x);
tempArray = x(x>0);
geomeanResult = geomean(tempArray)
harmmeanResult = harmmean(tempArray)

%% Test myMean
% Check outputs of myMean as according to each id and verify result
x = [2 -1 9 4.5 -2 6 3]
id = 1; %Return geometric mean
mm = myMean(x, id)
id = 2; %Return harmonic mean
mm = myMean(x, id)
id = 3; %Return -1
mm = myMean(x, id)

%% Test myGeomean2
% Verify function with one matrix of choice with minimum row, column size of 5
x = [2 1 5 3 9; 4 7 1 3 6; 6 1 6 2 8; 7 1 4 9 4; 7 4 5 3 2];
id = 1;
mm = myGeomean2(x, id) %execute with id of 1 and verify result with geomean
geomeanCheck = geomean(x, id)

x = [2 1 5 3 9; 4 7 1 3 6; 6 1 6 2 8; 7 1 4 9 4; 7 4 5 3 2];
id = 2;
mm = myGeomean2(x, id) %execute id of 2 and verify result with geomean
geomeanCheck = geomean(x, id)

x = [2 1 -5 3 9; 4 7 1 -3 6; 6 -1 6 2 8; 7 1 4 -9 4; 7 4 -5 3 2];
id = 2; 
mm = myGeomean2(x, id) %execute id of 2 again but with nnegative values to get value of -1






