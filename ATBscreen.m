function ATBscreen(btn3, handle3)
    
    global vrep clientIDint
    
    [sensorHanErr1,sensorHan1]=vrep.simxGetObjectHandle(clientIDint,'Sensor1',vrep.simx_opmode_blocking);
    [sensorImgErr1,resolution,image]=vrep.simxGetVisionSensorImage2(clientIDint,sensorHan1,0,vrep.simx_opmode_oneshot_wait);
    
    pause(0.1);
    
    figure2 = figure('MenuBar','none','Name','Screen','NumberTitle','off');
    
    btn5 = uicontrol('Style', 'pushbutton', 'String', {'ESCI'},'Position',[460 20 80 40],'Callback', @ATBclose);

    imshow(image,'Border','tight');
    
end