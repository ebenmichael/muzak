%plays frequency f for T time
function playChord(f,T,type,soundType)
    maj = major(f);
    mino = minor(f);
    switch type
        case 'maj'
            playnote(f,T,soundType);
            playnote(maj(3),T,soundType);
            playnote(maj(5),T,soundType);
        case 'min'
            playnote(f,T,soundType);
            playnote(mino(3),T,soundType);
            playnote(mino(5),T,soundType); 
        case 'maj7'
            playnote(f,T,soundType);
            playnote(maj(3),T,soundType);
            playnote(maj(5),T,soundType);
            playnote(maj(7),T,soundType);
        case 'min7'
            playnote(f,T,soundType);
            playnote(mino(3),T,soundType);
            playnote(mino(5),T,soundType);  
            playnote(mino(7),T,soundType);  
        case '7'
            playnote(f,T,soundType);
            playnote(maj(3),T,soundType);
            playnote(maj(5),T,soundType); 
            playnote(mino(7),T,soundType);
    end