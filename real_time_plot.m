fid = fopen('TBRSensorData.txt');
 
        %specs
    N=150;
    size_string=31;
    TStamp_offset_in_string=1;
    Temperature_offset_in_string=2;
    Timestamp=zeros(N,1);
    Temperature=zeros(N,1);
    SingleTag=ones(10,1);
while true
        %goto end of file
    while ~feof(fid)
        tline = fgetl(fid);   
    end
    %disp(tline)
        % move N samples back
    fseek(fid,-1*N*size_string,'cof');
    tline = fgetl(fid);         %required to get rid of first single integer...

        % get N sammples and format them for plot
    for loop_var=1:N
        tline = fgetl(fid);
        %disp(tline)
        SingleTag =sscanf(tline,'%f');
        Timestamp(loop_var,1)=SingleTag(1,1);
        Temperature(loop_var,1)=SingleTag(3,1);
    end
    plot(Timestamp,Temperature,'or');
    current_time=datetime;
    current_stamp=posixtime(current_time);
    xlim([1502809200 inf]);
    pause(1);
end
%fclose(fid);
