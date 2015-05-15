%plays a melody for a given note and beat transition matrix
% notesMat = notes transition matrix
% beatsMat = beats transition matrix
% scaleF = frequency for the scale 
% n = number of phrases
% phrase length = vector of possible phrase lengths
% type = type of scale
function music(notesMat,beatsMat,scaleF,bpm,n,phraseLengths,type,soundType)
    switch type
        case 'maj'
            scale = [major(scaleF/2) major(scaleF) scaleF*2 0]; %adds 0 for rests
        case 'min'
        scale = [minor(scaleF/2) minor(scaleF) scaleF*2 0]; %adds 0 for rests
        case 'blues'
            scale = [blues(scaleF/2) blues(scaleF) scaleF*2 0];
    end
    beats = [4 2 1 1/2 1/4 0] * 60/bpm;
%     beats = [60/bpm];
    tune = [];
    rhy = [];
    for i = 1:n
        phraseLength = phraseLengths(ceil(rand*length(phraseLengths)));
        restLength = ceil(length(beats) * rand);
        [phrase,phraseRhythm] = generatePhrase(notesMat,beatsMat,phraseLength);
        tune = [tune phrase length(scale)];
        rhy = [rhy phraseRhythm  restLength];
    end
    for i=1:length(tune)
        playnote(scale(tune(i)),beats(rhy(i)),soundType);
        %playnote(scale(tune(i+2)),beats(rhy(i+2)))
        %playnote(scale(tune(i))/2,beats(rhy(i)))
        %playChord(scale(tune(i)),beats(rhy(i)),'maj')
        playtriad(scale,beats(rhy(i)),tune(i),soundType);
        pause(beats(rhy(i)));
    end