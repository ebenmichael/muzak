% creates a phrase/melody
% n = phrase length

function [tune,rhy] = generatePhrase(notesMat,beatsMat,n)

    startNote = randi(size(notesMat,1),1,1);
    startBeat = randi(size(beatsMat,1),1,1);
    tune = melody(notesMat,startNote,n);
    rhy = rhythm(beatsMat,startBeat,n);