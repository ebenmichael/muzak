%blues scale

function scale = blues(startF)

   chrom = chromatic(startF);
   
   intervals = [1,4,6,7,8,11];
   
   scale = chrom(intervals);