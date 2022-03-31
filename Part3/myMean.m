%% myMean(x, id)
% Calculate harmonic (id = 2) or geometric mean (id = 1) depending on id value. If invalid return -1
function mm = myMean(x, id)
    if id == 1
        tempArray = x(x>0);
        mm = (prod(tempArray))^(1/numel(tempArray))
    
    elseif id == 2
        tempArray = x(x>0);
        oneArray = ones(size(tempArray));
        mm = numel(tempArray)/sum(oneArray./tempArray)
    else
        mm = -1
    end
end