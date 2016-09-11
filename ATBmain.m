clc;
clear;

global vrep clientIDint

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
    
    figure1 = figure('Color',[1 0.2 0.5],'MenuBar','none','Name','Controlli','Resize','off','NumberTitle','off');
    
    annotation(figure1,'textbox',[0.28 0.5 0.5 0.45],'String',{'SCEGLI UN COMANDO:'},'FontSize',15,'FitBoxToText','off','EdgeColor','none');

    btn = uicontrol('Style', 'pushbutton', 'String', {'SINISTRA'},'Position',  [20 220 200 100],'Callback', @ATBmoveDx);
    
    btn2 = uicontrol('Style', 'pushbutton', 'String', {'DESTRA'},'Position',  [340 220 200 100],'Callback', @ATBmoveSx);

    btn3 = uicontrol('Style', 'pushbutton', 'String', {'SCREEN'},'Position',  [180 100 200 100],'Callback', @ATBscreen);

    btn4 = uicontrol('Style', 'pushbutton', 'String', {'ESCI'},'Position',  [460 20 80 40],'Callback', @ATBstop);
    
else
    
    disp('Errore nel connettersi al server API.');
    pause(3);
    
    vrep.simxFinish(clientIDint);
    
    clear;
    clc;
    
end 

    disp('Programma concluso.');
    pause(3);

    clear;
    clc;
