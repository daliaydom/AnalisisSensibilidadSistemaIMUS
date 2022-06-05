function [peaks,indexes]=plotMovPeaks(M)

    color = ['r','g','b','c','m','y','k',"#0072BD","#D95319",...
                "#EDB120","#7E2F8E","#77AC30","#4DBEEE","#A2142F",...
                "#C396BC"];
    
    %plot and get euler angle of 15 IMUS 
%     [MOV,angle] = getMovement(numSubj,numMov,numSeries);
%     M=plotMovement(numSubj,MOV,angle,numMov,numSeries);
    
    %get max and min of each IMU signal
    for IMU=1:15 %numIMUS
        [pks, locs] = getpeaks( M(:,IMU) );
        plot(locs,pks,'LineStyle','none','Color',color(IMU),'Marker','v','MarkerFaceColor',color(IMU))
        peaks{IMU} = pks;
        indexes{IMU} = locs;
        lgd(IMU) = strcat("IMU", int2str(IMU));
    end
    
    
    %     add a bit space to the figure
        fig = gcf;
        fig.Position(3) = fig.Position(3) + 250;
    
    %     add legend
        Lgnd = legend(lgd);
        Lgnd.Position(1) = 0.01;
        Lgnd.Position(2) = 0.4;
        legend('AutoUpdate','off')

end