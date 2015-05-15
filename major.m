%returns the major scale starting at startF
function scale = major(startF)

   chrom = chromatic(startF);
   
   intervals = [1,3,5,6,8,10,12];
   
   scale = chrom(intervals);
%     scale = [];
%     ratios = [1/1	9/8	5/4	4/3	3/2	5/3	15/8];
%     for i=1:length(ratios)
%         scale = [scale ratios(i)*startF];
%     end 
end