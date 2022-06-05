function M=plotMovement(numSubj,MOV,angle,numMov,series)
    %plot series (1 or 2) of the 16 angles (int: 1 roll, 2 pitch, 3 yaw) of a 
    % movement MOV (matrix with the 1..6 numMov of a subject numSub (int: 1,...,15)

    numIMUs = size(MOV,3); %Number of IMUs
    M=reshape(MOV(:,angle,:),size(MOV,1),numIMUs); % Take only the matrix of 
    %the euler angle chosen 

    %Colors for each IMU
    color = ['r','g','b','c','m','y','k',"#0072BD","#D95319",...
            "#EDB120","#7E2F8E","#77AC30","#4DBEEE","#A2142F",...
            "#C396BC"];

    figure('Name', strcat('Subject',int2str(numSubj),'Movement',...
           int2str(numMov),'Series',int2str(series)) )
    

    for IMU=1:numIMUs
        
        plot(M(:,IMU),'Color',color(IMU)) %plot euler's angle of each IMU
        hold on

    end
    
    % add labels and title
    xlabel('Número de muestra');
    ylabel('Amplitud');
    legend('AutoUpdate','off')

end
