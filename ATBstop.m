 function ATBstop(btn4, handle4)
    
    global vrep clientIDint
    
    vrep.simxStopSimulation(clientIDint,vrep.simx_opmode_oneshot);
    pause(0.1);
    vrep.simxFinish(clientIDint);
    
    delete(gcf);
    
    clear;
    clc;
    
end