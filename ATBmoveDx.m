function ATBmoveDx(btn, handle1)

    global vrep clientIDint
    
    [jointHanErr2,jointHan1]=vrep.simxGetObjectHandle(clientIDint,'Joint',vrep.simx_opmode_blocking);
    
    [jointVelErr2]=vrep.simxSetJointTargetVelocity(clientIDint,jointHan1,0.5,vrep.simx_opmode_oneshot_wait);
    
    pause(0.2);
    
    [jointVelErr3]=vrep.simxSetJointTargetVelocity(clientIDint,jointHan1,0,vrep.simx_opmode_oneshot_wait);
    
    clear;
    clc;

end

