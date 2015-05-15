%returns the chromatic scale starting at startF
function scale = chromatic(startF)

    scale = zeros(1,13);

    for i=0:12
        scale(i+1) = startF* 2^(i/12);
    end