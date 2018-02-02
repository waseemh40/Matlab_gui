function varargout = iA_project_gui(varargin)
% IA_PROJECT_GUI MATLAB code for iA_project_gui.fig
%      IA_PROJECT_GUI, by itself, creates a new IA_PROJECT_GUI or raises the existing
%      singleton*.
%
%      H = IA_PROJECT_GUI returns the handle to a new IA_PROJECT_GUI or the handle to
%      the existing singleton*.
%
%      IA_PROJECT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IA_PROJECT_GUI.M with the given input arguments.
%
%      IA_PROJECT_GUI('Property','Value',...) creates a new IA_PROJECT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iA_project_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iA_project_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iA_project_gui

% Last Modified by GUIDE v2.5 29-Jan-2018 13:36:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iA_project_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @iA_project_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before iA_project_gui is made visible.
function iA_project_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iA_project_gui (see VARARGIN)

% Choose default command line output for iA_project_gui
handles.output = hObject;
handles.timer = timer(...
    'ExecutionMode', 'fixedRate', ...       % Run timer repeatedly
    'Period', 1, ...                        % Initial period is 1 sec.
    'TimerFcn', {@update_display,hObject}); % Specify callback function
% Update handles structure
set(handles.select_buttongroup,'SelectionChangeFcn',@select_buttongroup_SelectionChangeFcn);
guidata(hObject, handles);

% UIWAIT makes iA_project_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = iA_project_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tbr_sn_Callback(hObject, eventdata, handles)
% hObject    handle to tbr_sn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbr_sn as text
%        str2double(get(hObject,'String')) returns contents of tbr_sn as a double
    input = str2num(get(hObject,'String'));
    %checks to see if input is empty. if so, default input1_editText to zero
    if (isempty(input))
    set(hObject,'String','0')
    end
    guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function tbr_sn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbr_sn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_samples_Callback(hObject, eventdata, handles)
% hObject    handle to N_samples (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_samples as text
%        str2double(get(hObject,'String')) returns contents of N_samples as a double
    input = str2num(get(hObject,'String'));
    %checks to see if input is empty. if so, default input1_editText to zero
    if (isempty(input))
    set(hObject,'String','0')
    end
    guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function N_samples_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_samples (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_length_Callback(hObject, eventdata, handles)
% hObject    handle to time_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time_length as text
%        str2double(get(hObject,'String')) returns contents of time_length as a double
    input = str2num(get(hObject,'String'));
    %checks to see if input is empty. if so, default input1_editText to zero
    if (isempty(input))
    set(hObject,'String','0')
    end
    guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function time_length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generate_pb.
function generate_pb_Callback(hObject, eventdata, handles)
% hObject    handle to generate_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%selects axes1 as the current axes, so that
%Matlab knows where to plot the data
% Only start timer if it is not running
if strcmp(get(handles.timer, 'Running'), 'off')
    start(handles.timer);
end
   guidata(hObject, handles); %updates the handles
% END USER CODE

% START USER CODE
function update_display(hObject,eventdata,handles)
% Timer timer1 callback, called each time timer iterates.
% Gets surface Z data, adds noise, and writes it back to surface object.
% END USER CODE
    handles = guidata(handles);
            %collect inputs from text fields
    tbr_sn = get(handles.tbr_sn,'String');        
    time_length = get(handles.time_length,'String');
    N_samples = get(handles.N_samples,'String');
        %update TBR static text
    str = sprintf('TBR_%d',str2num(tbr_sn));
    set(handles.tbr_sn_static,'String',str);
    % a and b are variables of Strings type, and need to be converted
    % to variables of Number type before they can be added together
    axes(handles.snr_plot);
    snr_plot(tbr_sn,str2num(N_samples));
    axes(handles.temperature_plot);
    temperature_plot(tbr_sn,str2num(time_length));
    %adds a title, x-axis description, and y-axis description
    guidata(hObject, handles); %updates the handles

%end 
    function temperature_plot(tbr_sn,time_length)
        %do something for file name thing for real time!!!
    file_name= sprintf('TBR_%d_Temperature.txt',str2num(tbr_sn));
    fid = fopen(file_name);
        %check for invalide/non eisting TBR files
    if fid < 0
        cla;
        return;
    end
        %specs
    N=time_length;
    size_string=31;
    TStamp_offset_in_string=1;
    Temperature_offset_in_string=3;
    Timestamp=zeros(N,1);
    Temperature=zeros(N,1);
    SingleTag=ones(10,1);
%while true
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
        Timestamp(loop_var,1)=SingleTag(TStamp_offset_in_string,1);
        Temperature(loop_var,1)=SingleTag(Temperature_offset_in_string,1);
    end
    Time=datetime((Timestamp+3600),'ConvertFrom','posixtime');
    plot(Time,Temperature,'r*');
    %current_time=datetime;
    %current_stamp=posixtime(current_time);
    %current_stamp=1502809200;
    %axis_lower_limit=current_stamp-time_length-3600;% as well when actual real time!!!
    %xlim([axis_lower_limit inf]);
    %pause(1);
    grid on;
    title('Temperature Plot');
    xlabel('Timestamp');
    ylabel('Temperature(C)');
    ylim([-10 50]);
%end
        function snr_plot(tbr_sn,N_samples)
        %do something for file name thing for real time!!!
    file_name= sprintf('TBR_%d_Detections.txt',str2num(tbr_sn));
    fid = fopen(file_name);
        %check for invalide/non eisting TBR files
    if fid < 0
        cla;
        return;
    end
 
        %specs
    %N_samples=100;
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
    ID_SNR_matrix=zeros(N_samples,4); %N*3 matrix with ID:SNR:Data:Timelength format
%while true
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
        ID_SNR_matrix(loop_var,3)=SingleTag(4,1);   %get Data
        ID_SNR_matrix(loop_var,4)=SingleTag(1,1);   %get Timestamp
    end
   % pause(1);
   ID_SNR_matrix;
   ID_SNR_matrix=sortrows(ID_SNR_matrix,1);
    [C, ia, ic]=unique(sort(ID_SNR_matrix(:,1)));   %C= IDs vector; ia= index/SNR instances of each ID in C
	h = findobj('Tag','select_buttongroup');
    local_data=h.UserData;
    %plot(ID_SNR_matrix(:,1),ID_SNR_matrix(:,2),'r*');
   % hold on;
   cla reset;
   if local_data.my_snr == 1 && local_data.my_data == 0
    plot(ID_SNR_matrix(:,1),ID_SNR_matrix(:,2),'g*');
    grid on;
    title('SNR Plot');
    xlabel('Tag IDs');
    ylabel('SNR');
    ylim([0 100]);
   else       
    %plot(ID_SNR_matrix(:,1),ID_SNR_matrix(:,3),'b*');
    hold on;
    grid on;
    C
    ia;
    title('Data Plot');
    xlabel('Timestamp');
    ylabel('COde Data');
    ylim([0 200]);
    plotStyle = {'b*','k*','r*', 'g*', 'y*', 'r*','b*','k*','r*', 'g*', 'y*', 'r*'}; % add as many as you need
    legendText = {'COde ID 1'};
    abs_uppper_limit=size(ID_SNR_matrix(:,1));
    loop_iterations=size(C);
    for loop_var=1:loop_iterations(1,1)
        hold all;
        id_index_lower_limit=ia(loop_var);
        if loop_var==loop_iterations(1,1)
            id_index_upper_limit=abs_uppper_limit(1,1);
        else
            id_index_upper_limit=ia(loop_var+1)-1;
        end
        x_axis_data=ID_SNR_matrix(id_index_lower_limit:id_index_upper_limit,4);            %timestamps
        Time=datetime((x_axis_data+3600),'ConvertFrom','posixtime');
        y_axis_data=ID_SNR_matrix(id_index_lower_limit:id_index_upper_limit,3);            %code data
        plot(Time,y_axis_data,'*');
        legendText{loop_var} = sprintf('Code ID %d',C(loop_var));
        legend(legendText);
        drawnow;
    end
    hold off;
   end;
%end
    
% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% START USER CODE
% Necessary to provide this function to prevent timer callback
% from causing an error after GUI code stops executing.
% Before exiting, if the timer is running, stop it.
if strcmp(get(handles.timer, 'Running'), 'on')
    stop(handles.timer);
end
% Destroy timer
delete(handles.timer);
% END USER CODE

% Hint: delete(hObject) closes the figure
delete(hObject);
function select_buttongroup_SelectionChangeFcn(hObject, eventdata)
        %retrieve GUI data, i.e. the handles structure
    handles = guidata(hObject);
    switch get(eventdata.NewValue,'Tag') % Get Tag of selected object
    case 'snr_select'
    %execute this code when fontsize08_radiobutton is selected
    local_snr=1;
    local_data=0;
    local_data=struct('my_snr',local_snr,'my_data',local_data);
    case 'data_select'
    local_snr=0;
    local_data=1;
    local_data=struct('my_snr',local_snr,'my_data',local_data);
    otherwise
    local_snr=1;
    local_data=0;
    local_data=struct('my_snr',local_snr,'my_data',local_data);
    end
    hObject.UserData = local_data;
    %updates the handles structure
    guidata(hObject, handles);
