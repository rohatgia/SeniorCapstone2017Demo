while 1

[keyIsDown,secs,keyCode]=PsychHID('KbCheck');

if keyIsDown
if keyCode(38) == 1
        disp 'pressed Up'
end
if keyCode(39) == 1
        disp 'pressed Right'
end
if keyCode(40) == 1
        disp 'pressed Down'
end
if keyCode(37) == 1
        disp 'pressed Left'
end
if keyCode(160) == 1
        disp 'quit'
        break
end

else
    clc
end

end