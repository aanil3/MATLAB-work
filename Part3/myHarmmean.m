%% myHarmmean(x) 
% Calculate harmonic mean (hm) and indices of non-positive values (ind)
function [ind, hm] = myHarmmean(x) 
    ind = find(x<=0)
    tempArray = x(x>0);
    oneArray = ones(size(tempArray));
    hm = numel(tempArray)/sum(oneArray./tempArray)
end
