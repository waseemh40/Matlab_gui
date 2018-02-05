fid = fopen('tagDetections.txt');
 
        %specs
    N_samples=100;
    N_tags=5;
    size_string=31; %fixed offset
    TStamp_offset_in_string=1;  %fixed offset
    TagID_offset_in_string=2;   %fixed offset
    SNR_offset_in_string=3; %fixed offset
    Tag_counter=1;
    Tag_list=zeros(N_tags,1);
    Timestamp=zeros(N_samples,1);
    SNR=zeros(N_samples,N_tags);
    SingleTag=zeros(10,1);
    ID_SNR_matrix=zeros(N_samples,2); %N*2 matrix with ID:SNR format
while true
        %goto end of file
    while ~feof(fid)
        tline = fgetl(fid);   
    end
    %disp(tline)
        % move N samples back
    fseek(fid,-1*N_samples*size_string,'cof');
    tline = fgetl(fid);         %required to get rid of first single integer...

        % get N sammples and format them for plot
    for loop_var=1:N_samples
        tline = fgetl(fid);
        SingleTag =sscanf(tline,'%f');
        Timestamp(loop_var,1)=SingleTag(TStamp_offset_in_string,1);
        ID_SNR_matrix(loop_var,1)=SingleTag(3,1);   %get ID
        ID_SNR_matrix(loop_var,2)=SingleTag(5,1);   %get SNR
    end
    pause(1);
    sort(ID_SNR_matrix,1);
    [C, ia, ic]=unique(sort(ID_SNR_matrix(:,1)));   %C= IDs vector; ia= index/SNR instances of each ID in C
    plot(ID_SNR_matrix(:,1),ID_SNR_matrix(:,2),'r*');
    grid on;
    xlabel('Tag IDs');
    ylabel('SNR');
end
%fclose(fid);