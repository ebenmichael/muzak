%outputs a melody of length n with a transition matrix for notes

function melody = melody(noteMat,startNote,n)
    note = startNote;
    melody = zeros(1,n);
    for i=1:n
        melody(i) = note;
        note = randsample(1:size(noteMat,2),1,true,noteMat(:,note));
    end
    