clear

Forward = [0 1 0 0]; Back = [0 0 0 1]; Left = [1 0 0 0]; Right = [0 0 1 0];
ForwardRight = [0 1 1 0]; ForwardLeft = [1 1 0 0]; BackRight = [0 0 1 1];
BackLeft = [1 0 0 1]; Speed = 200; Spin = 60; Turbo = 163;
Quit = 160;
aria_init
arrobot_connect

while 1

[keyIsDown,secs,keyCode]=PsychHID('KbCheck');

if keyIsDown
if keyCode(Turbo) == 1
    Speed = 800;
    disp 'turbo'
else
    Speed = 200;
end
if keyCode(Quit) == 1
    disp 'quit'
    arrobot_disconnect
    break
elseif isequal(keyCode(37:40), Forward)
        arrobot_setvel(Speed)
        arrobot_setrotvel(0)
        disp 'Forward'
elseif isequal(keyCode(37:40), Right)
        disp 'RotateRight'
        arrobot_setvel(0)
        arrobot_setrotvel(-Spin)
elseif isequal(keyCode(37:40), Left)
        arrobot_setvel(0)
        arrobot_setrotvel(Spin)
        disp 'RotateLeft'
elseif isequal(keyCode(37:40), Back)
        arrobot_setvel(-Speed)
        arrobot_setrotvel(0)
        disp 'Back'
elseif isequal(keyCode(37:40), ForwardRight)
        arrobot_setvel(Speed)
        arrobot_setrotvel(-Spin)
        disp 'ForwardRight'
elseif isequal(keyCode(37:40), ForwardLeft)
        arrobot_setvel(Speed)
        arrobot_setrotvel(Spin)
        disp 'ForwardLeft'
elseif isequal(keyCode(37:40), BackRight)
        arrobot_setvel(-Speed)
        arrobot_setrotvel(-Spin)
        disp 'BackRight'
elseif isequal(keyCode(37:40), BackLeft)
        arrobot_setvel(-Speed)
        arrobot_setrotvel(Spin)
        disp 'BackLeft'
end
else
    arrobot_stop
    clc
end

end