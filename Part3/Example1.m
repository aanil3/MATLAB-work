% 250964140
% Abinav Anil
%% Test Function find_pos_occ(x,c) with provided text and singular characters 'a' and 'w'
x = 'The due date of assignment 3 is March 25.';

c = 'a';
[pos, occ] = find_pos_occ(x,c);

c='w';
[pos,occ] = find_pos_occ(x,c);

%% Find the positions of x in c (pos) and the number of occurrences of x in c (occ)
function [pos, occ] = find_pos_occ(x,c)
    pos = strfind(x,c)
    occ = count(x,c)
end