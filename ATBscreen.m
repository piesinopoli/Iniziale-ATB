function ATBscreen(btn3, handle3)
    
    vrep=remApi('remoteApi');
    vrep.simxFinish(-1);
    clientIDint=vrep.simxStart('127.0.0.1',19997,true,true,5000,5);%avvio connessione
    
    vrep.simxStartSimulation(clientIDint,vrep.simx_opmode_oneshot);
    
    [returnCode11,handle2]=vrep.simxGetObjectHandle(clientIDint,'Sensor1',vrep.simx_opmode_blocking);
    [returnCode12,resolution,image]=vrep.simxGetVisionSensorImage2(clientIDint,handle2,0,vrep.simx_opmode_oneshot_wait);
    
    [remoteCode13]=vrep.simxPauseSimulation(clientIDint,vrep.simx_opmode_oneshot_wait);
    
    pause(0.1);
    
    figure2 = figure('MenuBar','none','Name','Screen','NumberTitle','off');
    
    btn1 = uicontrol('Style', 'pushbutton', 'String', {'ESCI'},...
    'Position',  [460 20 80 40],...
    'Callback', @ATBclose);

    imshow(image,'Border','tight');
    
end