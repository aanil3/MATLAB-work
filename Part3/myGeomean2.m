%% function myGeomean2
% Calculate geometric mean for every column and store as a row if id = 1, if id = 2 calculate geometric mean for every row and store as a column. If there are any non-positive elements, return -1
function gm = myGeomean2(X,id)
    if (X(X<=0))~=0 %If there are any values equal or less than zero return -1
        gm = -1;
    elseif id == 1 %If id=1 calculate column's geomean and store gm as a row
        [~, temp] = myGeomean(X(:,1));
        gm = temp; 
        for count = 2:1:length(X)
            [~, temp] = myGeomean(X(:,count));
            gm = [gm temp];
        end
    elseif id == 2 %Otherwise if id = 2 calculate each row's gm and store result as a column by creating new row after every geometric mean value
        [~, temp] = myGeomean(X(1,:));
        gm = temp;
        for count = 2:1:length(X)
            [~, temp] = myGeomean(X(count,:));
            gm = [gm; temp];
        end
    end
end