%plays frequency f for T time
function  y = playnote(f,T,type)
    fs = 44.1e3;
    t = linspace(0,T,fs*T);
    y = sin(2*pi*f*t);
    y = y + .4*sin(pi*f*t);
    y = y + .05*sin(4*pi*f*t);
    y = y + .05*sin(3/2 *2*pi*f*t);
    y = y + .05*sin(4/3 *2*pi*f*t);
    switch type
        case 1
            A = 1 - exp( - linspace(0, 0.9, (fs*T*0.1)) / .1); %rise 20% of signal
            D = linspace(1, 0.8,(fs*T*0.1)); %drop of 5% of signal
            S = linspace(0.8, 0.8,(fs*T*0.70)); %delay of 40% of signal
            R = linspace(0.8, 0,(fs*T*0.1)); %drop of 35% of signal
        case 2
            A = linspace(0, 1, (fs*T*0.1)); %rise 10% of signal
            D = linspace(1, 1,(fs*T*0.1)); %drop of 10% of signal
            S = linspace(1, 1,(fs*T*0.70)); %delay of 70% of signal
            R = linspace(1, 0,(fs*T*0.1)); %drop of 10% of signal
        case 3
            A = linspace(0, 1, (fs*T*0.01)); %rise 1% of signal
            D = linspace(1, 0,(fs*T*0.2)); %drop of 20% of signal
            S = linspace(0, 0,(fs*T*0.70)); %delay of 70% of signal
            R = linspace(0, 0,(fs*T*0.09)); %drop of 9% of signal   
        case 4
            A = linspace(0, 1, (fs*T*0.5)); %rise 50% of signal
            D = linspace(1, 0,(fs*T*0.5)); %drop of 50% of signal
            S = linspace(0, 0,(fs*T*0)); %delay of 0% of signal
            R = linspace(0, 0,(fs*T*0)); %drop of 0% of signal
        case 5
            A = linspace(0, 1, (fs*T*0.01)); %rise 1% of signal
            D = linspace(1, 0,(fs*T*0.99)); %drop of 99% of signal
            S = linspace(0, 0,(fs*T*0)); %delay of 0% of signal
            R = linspace(0, 0,(fs*T*0)); %drop of 0% of signal
    end
    env = [A D S R];
    %plot(env)
    if length(env) < length(y)
        numZero = length(y) - length(env);
        env = [env zeros(1,numZero)];
        
    elseif length(env) > length(y)
        numZero = - (length(y) - length(env));
        env(end-numZero:end) = [];
    end
    y = env .* y;
    %semilogx(real(fft(y)))
    %axis([0 2/220 -1 1])
    soundsc(y,fs)
end
    
 