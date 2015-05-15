%returns the major scale starting at startF
function scale = minor(startF)
% 
%    chrom = chromatic(startF);
%    
%    intervals = [1,3,4,6,8,9,11];
%    
%    scale = chrom(intervals);
    scale = [];
    ratios = [1/1	9/8	32/27	4/3	3/2	8/5 9/5];
    for i=1:length(ratios)
        scale = [scale ratios(i)*startF];
    end 
end