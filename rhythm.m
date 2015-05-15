%generates a rhythm for a melody
function rhythm = rhythm(beatsMat,startBeat,n)
    beat = startBeat;
    rhythm = zeros(1,n);
    for i=1:n
        rhythm(i) = beat;
        beat = randsample(1:size(beatsMat,2),1,true,beatsMat(:,beat));
    end