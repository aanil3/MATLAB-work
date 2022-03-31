%% myGeomean(x) 
% calculate geometric mean of x (gm) and return non-positive values' indices (ind)
function [ind, gm] = myGeomean(x) 
    ind = find(x<=0)
    tempArray = x(x>0);
    gm = (prod(tempArray))^(1/numel(tempArray))
end