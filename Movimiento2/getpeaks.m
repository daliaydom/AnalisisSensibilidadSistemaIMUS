function [pks, locs] = getpeaks( X )
[maxpks,maxlocs] = findpeaks(X); % maximum peaks and their index 
[minpks,minlocs] = findpeaks(-X); % minimum peaks and ther index
minpks = -minpks;
pks=[maxpks; minpks]; % maxumum and minimum peaks
locs=[maxlocs; minlocs]; % index of maximum and minimum peaks in pairs
locs=sort(locs); % sort the index pairs in ascending order 
pks=X(locs,1); % 