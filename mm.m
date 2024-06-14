function varargout = mm(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mm_OpeningFcn, ...
                   'gui_OutputFcn',  @mm_OutputFcn, ...
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


% --- Executes just before mm is made visible.
function mm_OpeningFcn(hObject, eventdata, handles, varargin)


% Choose default command line output for mm
handles.output = hObject;
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('2.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mm_OutputFcn(hObject, eventdata, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;

function edit4_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
key=get(handles.edit4,'string');
key2=double(dec2bin(double(key))-48);
lk=size(key2,1);
textA=get(handles.edit5,'string');
textB=get(handles.text9,'string');
text=strcat(textA,textB);
text2=double(dec2bin(double(text))-48);
lt=size(text2,1);
vals=floor(lt/lk);
off=mod(lt,lk);
add=key2(1:off,:);
mask=2.^(6:-1:0); %length is 7 bits for letters
new_key=[repmat(key2,vals,1); add];
new_key=sum(new_key.*mask,2);
out=xor(text2,new_key);
vals=sum(out.*mask,2)+48;
%space symbol override
vals(vals==143)=32;
out=char(vals');
set(handles.edit6,'string',out);
disp(out)


% hObject   h handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit6_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)

%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
closereq(); 




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
key=get(handles.edit4,'string');
key2=double(dec2bin(double(key))-48);
lk=size(key2,1);
text=get(handles.edit6,'string');
text2=double(dec2bin(double(text))-48);
lt=size(text2,1);
vals=floor(lt/lk);
off=mod(lt,lk);
add=key2(1:off,:);
mask=2.^(6:-1:0); %length is 7 bits for letters
new_key=[repmat(key2,vals,1); add];
new_key=sum(new_key.*mask,2);
out=xor(text2,new_key);
vals=sum(out.*mask,2)+48;
%space symbol override
vals(vals==143)=32;
out=char(vals');
set(handles.edit9,'string',out)



function edit7_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
set(handles.edit9,'string','');
set(handles.edit5,'string','');
set(handles.edit4,'string','');
set(handles.edit6,'string','');
set(handles.text9,'string','');




% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
[filename pathname] = uigetfile({'*.txt'},'File Selector');
fullpathname=strcat(pathname,filename);
textfile=fileread(fullpathname);
set(handles.text9,'String',textfile);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
set(handles.prev,'visible','on');
set(handles.output,'visible','off');

