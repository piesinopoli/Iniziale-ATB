function ATBclose(btn4, handle4)

    vrep=remApi('remoteApi');
    vrep.simxFinish(-1);
    clientIDint=vrep.simxStart('127.0.0.1',19997,true,true,5000,5);%avvio connessione

    [remoteCode14]=vrep.simxPauseSimulation(clientIDint,vrep.simx_opmode_oneshot_wait);
    
    delete(gcf);
      
    [returnCode15]=vrep.simxStopSimulation(clientIDint,vrep.simx_opmode_oneshot_wait);
    vrep.simxFinish(clientIDint);
    
    clear;
    clc;
    
end