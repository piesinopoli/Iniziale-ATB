function ATBmoveSx(btn2, handle2)
    
    vrep=remApi('remoteApi');
    vrep.simxFinish(-1);
    clientIDint=vrep.simxStart('127.0.0.1',19997,true,true,5000,5);%avvio connessione
    
    vrep.simxStartSimulation(clientIDint,vrep.simx_opmode_oneshot);

    [returnCode6,handle1]=vrep.simxGetObjectHandle(clientIDint,'Joint',vrep.simx_opmode_blocking);
    [returnCode7]=vrep.simxSetJointTargetVelocity(clientIDint,handle1,-1,vrep.simx_opmode_oneshot_wait);
    
    [remoteCode8]=vrep.simxPauseSimulation(clientIDint,vrep.simx_opmode_oneshot_wait);
    
    [returnCode9,handle1]=vrep.simxGetObjectHandle(clientIDint,'Joint',vrep.simx_opmode_blocking);
    [returnCode10]=vrep.simxSetJointTargetVelocity(clientIDint,handle1,0,vrep.simx_opmode_oneshot_wait);
    
    clear;
    clc;
    
end