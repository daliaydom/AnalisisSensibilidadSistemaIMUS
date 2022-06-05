close all; clear all; clc;
numIMUS = 15;
numMov = 1;
extension = 0;
flexion = 1;

%% SUBJECT 1---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 1;
numSeries = 1;
numPeaks = 6;
numSeg = numPeaks;
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, indexMeans]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans, 285]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 2---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 2;
numSeries = 1;
numPeaks = 6;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans, 285]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 3---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 3;
numSeries = 1;
numPeaks = 6;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 2;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [16, 16, 141, 225, 285]; % add where to begin and to finish
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 4---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 4;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans, 285, 285];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, indexMeans, 285, 285];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 5---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 5;
numSeries = 1;
numPeaks = 6;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 6---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 6;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [5, indexMeans, 285];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, 73, 132, 180, 235, 285];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 7---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 7;
numSeries = 1;
numPeaks = 4;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans, 285];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 50, 115, 164, 225, 290];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 8---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 8;
numSeries = 1;
numPeaks = 4;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 40, 85, 132, 189, 228, 240];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 13, indexMeans,285];
indexes=plotLabels(indexMeans,numSeg+2,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save


%% SUBJECT 9---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 9;
numSeries = 1;
numPeaks = 3;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, 110, 173, 249, 270];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 10---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 10;
numSeries = 1;
numPeaks = 6;
numSeg = numPeaks;
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [15, indexMeans,325];
indexes=plotLabels(indexMeans,numSeg,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans];
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
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [30, indexMeans,372];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [15, indexMeans,270];
indexes=plotLabels(indexMeans,numSeg,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 12---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 12;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [30, 30, 88, 133, 178, 224, 264];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [37, 37, 92, 142, 188, 229, 269];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% SUBJECT 13---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
% numSubj = 13;
% numSeries = 1;
% numPeaks = 2;
% startLabel = extension;
% 
% [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
% indexMeans = [30, 30, 88, 133, 178, 224, 264];
% indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
% [MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
% save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save
% 
% 
% [peaks,indexes]=plotMovPeaks(numSubj,numMov,numSeries); 
% for i=1:numIMUS
%     indexes{i}=indexes{i}(end-4:end);
% end
% indexMeans=meanIndexes(indexes,numPeaks,numIMUS);
% indexMeans = [40, 40, indexMeans,288];
% plotLabels(indexMeans,numSeg+1)

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
% numSeries = 2;
% numPeaks = 5;
% numSeg = numPeaks;
% 
% [peaks,indexes]=plotMovPeaks(numSubj,numMov,numSeries); 
% for i=1:numIMUS
%     indexes{i}=indexes{i}(end-4:end);
% end
% indexMeans=meanIndexes(indexes,numPeaks,numIMUS);
% indexMeans = [45, 45, indexMeans, 286];
% plotLabels(indexMeans,numSeg+1)

%% SUBJECT 14---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 14;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSeries = 2;
numPeaks = 4;
numSeg = numPeaks;
startLabel = extension;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [1, 1, indexMeans];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

%% SUBJECT 15---------------------------------------------------------------
% Series 1 ----------------------------------------------------------------
%--------------------------------------------------------------------------
numSubj = 15;
numSeries = 1;
numPeaks = 5;
numSeg = numPeaks;
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [10, 10, 65, 121, 172, 225, 278];
indexes=plotLabels(indexMeans,numSeg+1,startLabel); %plot labels as colored areas 
[MOV1_r1,labels1]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels1','MOV1_r1') % Save

%% Series 2 ----------------------------------------------------------------
% --------------------------------------------------------------------------
numSeries = 2;
numPeaks = 5;
numSeg = numPeaks;
startLabel = flexion;

[MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks);
indexMeans = [4, 4, 65, 135, 190, 256];
indexes=plotLabels(indexMeans,numSeg,startLabel); %plot labels as colored areas 
[MOV1_r2,labels2]=MovAndLabels(MOV,indexes,startLabel);
save(strcat('LabeledSubject',int2str(numSubj),'.mat'),'labels2','MOV1_r2','-append') % Save

% [peaks,indexes]=plotMovPeaks(numSubj,numMov,numSeries); 
% for i=1:numIMUS
%     indexes{i}=indexes{i}(end-4:end);
% end
% indexMeans=meanIndexes(indexes,numPeaks,numIMUS);
% indexMeans = [0, indexMeans, 286];
% plotLabels(indexMeans,numSeg+1)

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
           leg0 = 'Flexion';
           leg1 = 'Extension';
        case 0
           color = '#D95319';
           leg1 = 'Flexion';
           leg0 = 'Extension';
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
        a = area([n,m],[150,150]);
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

function [MOV,indexMeans]=plotMovAndPeaks(numSubj,numMov,numSeries,numIMUS,numPeaks)
    [MOV,angle] = getMovement(numSubj,numMov,numSeries); % get Movement matrix and angle to use
    M = plotMovement(numSubj,MOV,angle,numMov,numSeries); % get and plot matrix for that angle from MOV
    [peaks,indexes] = plotMovPeaks(M); % plot its peaks
    indexMeans = meanIndexes(indexes,numPeaks,numIMUS); %compute de indexes of peaks
end

function [mov,lab]=MovAndLabels(MOV,indexes,startLabel)
    lab=targetVector(indexes,startLabel); %labels (0 and 1)
    mov= MOV(indexes(1):indexes(end)-1,:,:); %labeled samples
end


