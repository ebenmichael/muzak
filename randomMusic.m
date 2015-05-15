%plays a melody in scaleF major

function randomMusic(scaleF,bpm,n,type)
    if strcmp(type,'major')
        scale = [major(scaleF) scaleF*2 0 ]; %adds 0 for rests
    elseif strcmp(type,'minor')
        scale = [minor(scaleF) scaleF*2 0 ]; %adds 0 for rests
    end
    beats = [4 2 1 1/2 1/4] * 60/bpm;
%     beats = [60/bpm];
    notesMat = randtrans(length(scale));
    beatsMat = randtrans(length(beats));
    startNote = randi(length(scale),1,1);
    startBeat = randi(length(beats),1,1);
    tune = melody(notesMat,startNote,n);
    rhy = rhythm(beatsMat,startBeat,n);
    
    for i=1:n
        playnote(scale(tune(i)),beats(rhy(i)))
        pause(beats(rhy(i)));
    end