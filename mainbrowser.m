addpath('scripts')
setDataMilanoStudy

%% settings and flags
toBip=0; plotFlag=0; dtfFlag=1;
link='E:\_patientsInv\';


for patientP=25:25%length(patients)
    if dtfStudy(patientP)==1
        curPatientsData=dir([link patients{patientP} '\ictal\*.mat']);
        montageActive=[link patients{patientP} filesep 'channels.txt'];
        % makes bipolar montage
        if exist(montageActive)>0 flagBip=1; else flagBip=0; end
    end
end
