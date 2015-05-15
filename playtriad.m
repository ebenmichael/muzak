function playtriad(scale,T,num,soundType)
    y = playnote(scale(num),T,soundType);
    third = mod(num + 3,length(scale));
    if third ==0
        third = 1;
    end
    fifth = mod(num + 5,length(scale));
    if fifth == 0
        fifth = 1;
    end
    y = y + playnote(scale(third),T,soundType);
    y = y+ playnote(scale(fifth),T,soundType);
    semilogx(real(fft(xcorr(y,y))))
    
end