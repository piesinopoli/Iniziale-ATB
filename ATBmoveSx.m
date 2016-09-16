function ATBmoveSx(btn1, handle1)
    
    global vrep clientIDint jointHan1
    
    [jointVelErr1]=vrep.simxSetJointTargetVelocity(clientIDint,jointHan1,1,vrep.simx_opmode_oneshot_wait);
    
    pause(0.05);
    
    [jointVelErr2]=vrep.simxSetJointTargetVelocity(clientIDint,jointHan1,0,vrep.simx_opmode_oneshot_wait);
    
    ATBvision();
    
end