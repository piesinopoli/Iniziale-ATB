function ATBvision()
    
    global vrep clientIDint sensorHan1
    
    [sensorImgErr1,resolution,image]=vrep.simxGetVisionSensorImage2(clientIDint,sensorHan1,0,vrep.simx_opmode_oneshot_wait);
    
    subplot(1,2,1), subimage(image);
    
    subplot(1,2,2), subimage(image);
   
end