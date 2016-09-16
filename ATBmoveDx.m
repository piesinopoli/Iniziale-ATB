function ATBmoveDx(btn2, handle2)

    global vrep clientIDint jointHan1
    
    [jointVelErr3]=vrep.simxSetJointTargetVelocity(clientIDint,jointHan1,-1,vrep.simx_opmode_oneshot_wait);
    
    pause(0.05);
    
    [jointVelErr4]=vrep.simxSetJointTargetVelocity(clientIDint,jointHan1,0,vrep.simx_opmode_oneshot_wait);
    
    ATBvision();
    
end

