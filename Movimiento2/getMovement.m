function [MOV,angle]=getMovement(numSubj,numMov,numSeries)
    % Get the matrix MOV (samples x angle x IMU) that has the samples of 
    % each euler angle (roll, pitch and yaw) for each IMU (1,...,15)
    % The parameters are: Number of subject numSubj (int: 1,2,...,15), 
    % number of movement (int: 1, 2, ..., 6), and number of series (int:
    % 1, 2)

    path = '../../Inspeccion de datos/';

    %Selection of euler's angle: roll (x), pith (y) or yaw (z)
    switch numMov
        case {1,5} %Anterior hip flexion,  cervical flexion/extension
            angle = 1; %roll
        case {2,6} %Lateral flexions, cervical lateral flexion
            angle = 2; %pitch
        case {3,4}
            angle = 3; %axial rotarion, cervical rotation
    end

    %Load de signals: The 2 series of each numMov 
    load(strcat(path,'Signals',int2str(numSubj),'.mat')); %Load subjet's file    

    %Selection of number of series
    switch numSeries
        case 1
            MOV = eval( strcat('MOV', int2str(numMov),'_r1')); %First series of numMovs
        case 2
            MOV = eval( strcat('MOV', int2str(numMov),'_r2')); %Second series of numMovs 
    end 
          
end