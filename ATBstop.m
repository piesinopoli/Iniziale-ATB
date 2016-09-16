 function ATBstop(btn4, handle4)
    
    global vrep clientIDint
    
    vrep.simxStopSimulation(clientIDint,vrep.simx_opmode_oneshot_wait);
    vrep.simxFinish(clientIDint);
    
    delete(gcf);
    
end