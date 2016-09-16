global vrep clientIDint jointHan1 sensorHan1

disp('Inzio del programma.');
pause(1);
clc;

disp('Avvio connessione.');
pause(0.5);
clc;
disp('Avvio connessione..');
pause(0.5);
clc;
disp('Avvio connessione....');
pause(0.5);
clc;
disp('Avvio connessione.....');
pause(0.5);
clc;
disp('Avvio connessione......');
pause(0.5);
clc;

vrep=remApi('remoteApi');
vrep.simxFinish(-1);
[clientIDint]=vrep.simxStart('127.0.0.1',19997,true,true,5000,5);%avvio connessione
pause(0.1);
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if (clientIDint>-1)
    
    disp('Connesso al server API!');
    pause(2);
    clc;
    
    disp('Premi un tasto per iniziare...');
    pause;
    clc;
    
    vrep.simxStartSimulation(clientIDint,vrep.simx_opmode_oneshot);
    
    %%%HEADER%%%
    [jointHanErr1,jointHan1]=vrep.simxGetObjectHandle(clientIDint,'Joint1',vrep.simx_opmode_blocking);
    [sensorHanErr1,sensorHan1]=vrep.simxGetObjectHandle(clientIDint,'Sensor1',vrep.simx_opmode_blocking);
    [sensorImgErr1,resolution,image]=vrep.simxGetVisionSensorImage2(clientIDint,sensorHan1,0,vrep.simx_opmode_oneshot_wait);
    %%%HEADER%%%
    
    %%%GUI%%%
    figure1 = figure('Color',[1 0.2 0.5],'MenuBar','none','Name','Controlli','Resize','off','NumberTitle','off');
    annotation(figure1,'textbox',[0.31 0.45 0.5 0.45],'String',{'SCEGLI UN COMANDO:'},'FontSize',15,'FitBoxToText','off','EdgeColor','none');
    btn1 = uicontrol('Style', 'pushbutton', 'String', {'SINISTRA'},'Position',  [20 20 100 50],'Callback', @ATBmoveSx);
    btn2 = uicontrol('Style', 'pushbutton', 'String', {'DESTRA'},'Position',  [130 20 100 50],'Callback', @ATBmoveDx);
    btn3 = uicontrol('Style', 'pushbutton', 'String', {'SCREEN'},'Position',  [240 20 100 50],'Callback', @ATBscreen);
    btn4 = uicontrol('Style', 'pushbutton', 'String', {'ESCI'},'Position',  [460 20 80 40],'Callback', @ATBstop);
    ATBvision();
    %%%GUI%%%
    
else
    
    disp('Errore nel connettersi al server API.');
    pause(3);
    
    vrep.simxFinish(clientIDint);
    
    clear;
    clc;
    
end 

    disp('Programma concluso.');
    pause(3);