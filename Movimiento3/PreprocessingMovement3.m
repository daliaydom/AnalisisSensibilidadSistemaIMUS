close all; clear all; clc;
numIMUS = 15;
numMov = 3;
derecha = 0;
izquierda = 1;

%% SUBJECT 1---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 1;
numSeries = 1;
numPeaks = 3;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [4,4,62,126,180,236,288]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg+3,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3]);
indexMeans = [1,9,64,123,187,243,288]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 2---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
% numSubj = 2;
% numSeries = 1;
% numPeaks = 3;
% numSeg = numPeaks;
% startLabel = derecha;

% [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3,4,5,7,11]);
% indexMeans = [25 , indexMeans, 287]; % add where to begin and to finish
% indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
% [MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
% save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
% numSeries = 2;
% numPeaks = 4;
% startLabel = derecha;
% 
% [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3,5,12,13]);
% indexMeans = [30, indexMeans, 285]; % add where to begin and to finish
% indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
% [MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
% save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 3---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
% numSubj = 3;
% numSeries = 1;
% numPeaks = 4;
% startLabel =derecha
% 
% [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3,5,11]);
% indexMeans = [10, indexMeans, 288]; % add where to begin and to finish
% indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
% [MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
% save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
% numSeries = 2;
% numPeaks = 4;
% numSeg = numPeaks;
% startLabel =derecha
% 
% [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3]);
% indexMeans = [15,59,118,183,249,275]; % add where to begin and to finish
% indexes=plotLabels(indexMeans,numSeg,startLabel); %plot labels as colored areas 
% [MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
% save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 4---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 4;
numSeries = 1;
numPeaks = 3;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,6,7,8,10]);
indexMeans = [1,1,45,113,176,246,286];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 3;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,6,12]);
indexMeans = [1,1,46,123,189,257,275];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 5---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 5;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[3,5,15]);
indexMeans = [1, 8,53,107,166,218,279];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,4]);
indexMeans = [1,32,90,147,212,280];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 6---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 6;
numSeries = 1;
numPeaks = 4;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [15,34,86,142,198,249,275];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 6;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [1,24,69,122,173,229,275];
indexes=plotLabels(indexMeans,numSeg,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 7---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 7;
numSeries = 1;
numPeaks = 4;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [1,21,78,150,218,280];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 3;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3,4,5,12]);
indexMeans = [14,50,116,177,236,287];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 8---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 8;
numSeries = 1;
numPeaks = 4;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2]);
indexMeans = [1,33,88,142,204,271];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,3]);
indexMeans = [1,30,86,148,205,263,286];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save


%% SUBJECT 9---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 9;
numSeries = 1;
numPeaks = 2;
numSeg = numPeaks;
startLabel =derecha;
% 
[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [1,31,112,198,274,354,425,440];
indexes=plotLabels(indexMeans,numSeg+4,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 3;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[3]);
indexMeans = [1,1,42,119,190,264];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2') % Save

%% SUBJECT 10---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 10;
numSeries = 1;
numPeaks = 3;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[2,3]);
indexMeans = [10,33,90,152,208,269];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel =derecha

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [10,40,92,165,226,288];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 11---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 11;
numSeries = 1;
numPeaks = 4;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3,14]);
indexMeans = [20,54,115,178,238,289];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 3;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [1,32,106,181,258];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 12---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 12;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [26,55,101,138,181,223,264];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [42,64,105,139,172,212,252];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% SUBJECT 13---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 13;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [30,56,100,145,191,233,274,285];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[]);
indexMeans = [1,1,61,121,178,227,282];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% SUBJECT 14---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 14;
numSeries = 1;
numPeaks = 4;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[2]);
indexMeans = [1,20,84,142,202,260,286];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel =derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1]);
indexMeans = [1,8,60,121,191,261,286];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 15---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 15;
numSeries = 1;
numPeaks = 3;
numSeg = numPeaks;
startLabel = derecha;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1,2,3,8]);
indexMeans = [29,52,121,187,250,275];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
% --------------------------------------------------------------------------
% numSeries = 2;
% numPeaks = 4;
% numSeg = numPeaks;
% startLabel = derecha;

% [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,[1, 2]);
% indexMeans = [1,indexMeans,286];
% indexes=plotLabels(indexMeans,numSeg,startLabel); %plot labels as colored areas 
% [MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
% save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% Functions --------------------------------------------------------------
% -------------------------------------------------------------------------

function indexMeans=meanIndexes(indexes,numPeaks,numIMUS)
    for peak=1:numPeaks
        mean = 0;
        for IMU=1:numIMUS
            mean=mean+indexes{IMU}(peak);
        end
        indexMeans(peak) = round(mean/numIMUS);
    end
end

%
function indexes=plotLabels(indexMeans,numSeg,startColor)
    switch startColor
        case 1
           color = '#0072BD';
           leg1 = 'Derecha';
           leg0 = 'Izquierda';
        case 0
           color = '#D95319';
           leg0 = 'Derecha';
           leg1 = 'Izquierda';
    end
    for i=1:numSeg
        if color == '#0072BD'
            color = '#D95319'; 
        else
            color = '#0072BD'; 
        end
        if i == 1, n = indexMeans(1); end
        if i == numSeg, m = indexMeans(end); 
        else, m = (indexMeans(i+1)+indexMeans(i+2))/2;  
        end
        indexes(i,:) = [n,m];
        a = area([n,m],[190,190]);
        a.FaceColor = color; a.FaceAlpha = 0.3;
        n = m;
    end
    legend({leg0,leg1})
    indexes=round([indexes(:,1)', indexes(end,2)]);
end

function labels=targetVector(indexes,startLabel)
    labels = [];
    for i=1:size(indexes,2)-1
        if startLabel == 1
            labels = [labels, ones([1,indexes(i+1)-indexes(i)])];
            startLabel = 0;
        else
            labels = [labels, zeros([1,indexes(i+1)-indexes(i)])];
            startLabel = 1;
        end
    end
end

function [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks,deleteIMUS)
    [MOV,angle] = getMovement(numSubj,numMov,numSeries); % get Movement matrix and angle to use
    M = plotMovement(numSubj,MOV,angle,numMov,numSeries); % get and plot matrix for that angle from MOV
    [peaks,indexes] = plotMovPeaks(M,numIMUS); % plot its peaks
    indexes(:,deleteIMUS)=[];
    numIMUSdeleted = size(deleteIMUS,2);
    indexMeans = meanIndexes(indexes,numPeaks,numIMUS-numIMUSdeleted); %compute de indexes of peaks
end

function [mov,lab]=MovAndLabels(MOV,indexes,startLabel)
    lab=targetVector(indexes,startLabel); %labels (0 and 1)
    mov= MOV(indexes(1):indexes(end)-1,:,:); %labeled samples
end


