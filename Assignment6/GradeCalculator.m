%%
% Grade Calculator GUI

% Author: Brittany Trotter

% Date: 11/12/2020

% Description: Code to create a GUI to calculate and display a grade
% percentage with corresponding letter grade from five assignment grades
% input by the user

% Developed on Matlab Version R2020b with Microsoft Windows 10 Home
% Version 10.0 (Build 18363)
%
%%-----------------------------------------------------------------------

function varargout = GradeCalculator(varargin)
% GRADECALCULATOR MATLAB code for GradeCalculator.fig
%      GRADECALCULATOR, by itself, creates a new GRADECALCULATOR or raises the existing
%      singleton*.
%
%      H = GRADECALCULATOR returns the handle to a new GRADECALCULATOR or the handle to
%      the existing singleton*.
%
%      GRADECALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRADECALCULATOR.M with the given input arguments.
%
%      GRADECALCULATOR('Property','Value',...) creates a new GRADECALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GradeCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GradeCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GradeCalculator

% Last Modified by GUIDE v2.5 12-Nov-2020 13:41:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GradeCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @GradeCalculator_OutputFcn, ...
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


% --- Executes just before GradeCalculator is made visible.
function GradeCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GradeCalculator (see VARARGIN)


% Choose default command line output for GradeCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GradeCalculator wait for user response (see UIRESUME)
%uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GradeCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function Assign1_Callback(hObject, eventdata, handles)
% hObject    handle to Assign1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Assign1 as text
%        str2double(get(hObject,'String')) returns contents of Assign1 as a double


% --- Executes during object creation, after setting all properties.
function Assign1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Assign1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Assign2_Callback(hObject, eventdata, handles)
% hObject    handle to Assign2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Assign2 as text
%        str2double(get(hObject,'String')) returns contents of Assign2 as a double


% --- Executes during object creation, after setting all properties.
function Assign2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Assign2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalcButton.
function CalcButton_Callback(hObject, eventdata, handles)
% % hObject    handle to CalcButton (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)

%Checks edit fields for numeric values and sets it to zero if a numeric
%value is not found
FieldCheck = str2num(get(handles.Assign1,'String'));
if isempty(FieldCheck)
    set(handles.Assign1,'String','0');
end
FieldCheck = str2num(get(handles.Assign2,'String'));
if isempty(FieldCheck)
    set(handles.Assign2,'String','0');
end
FieldCheck = str2num(get(handles.Assign3,'String'));
if isempty(FieldCheck)
    set(handles.Assign3,'String','0');
end
FieldCheck = str2num(get(handles.Assign4,'String'));
if isempty(FieldCheck)
    set(handles.Assign4,'String','0');
end
FieldCheck = str2num(get(handles.Assign5,'String'));
if isempty(FieldCheck)
    set(handles.Assign5,'String','0');
end

%Retrieve values input by the user
Assign1Value = get(handles.Assign1,'String');
Assign2Value = get(handles.Assign2,'String');
Assign3Value = get(handles.Assign3,'String');
Assign4Value = get(handles.Assign4,'String');
Assign5Value = get(handles.Assign5,'String');

%Calculate grade percentage from values input by the user
PercentValue = round(((str2num(Assign1Value))+(str2num(Assign2Value))+(str2num(Assign3Value))+(str2num(Assign4Value))+(str2num(Assign5Value)))/5);

%Set font size for percentage text display
handle.PercentText.FontSize = 50;

%If grade percentage exceeds 99%, adjust font size to accomodate 3 digits
%and percent sign
if PercentValue > 99
    handles.PercentText.FontSize = 45;
end

%Set letter grade text display color to a deep purple
handles.LettGradeText.ForegroundColor = '#7e2f8e';

%Determine letter grade to display according to grade percentage calculated
%above. A letter grade of 'D' will appear a yellow-gold color and 'F' will
%appear red to alert the user to below average grades.
if PercentValue >= 90
    set(handles.LettGradeText,'String','A');
elseif PercentValue <= 89 && PercentValue >= 80
    set(handles.LettGradeText,'String','B');
elseif PercentValue <= 79 && PercentValue >= 70
    set(handles.LettGradeText,'String','C');
elseif PercentValue <= 69 && PercentValue >= 60
    set(handles.LettGradeText,'String','D');
    handles.LettGradeText.ForegroundColor = '#fad502';
elseif PercentValue <= 59
    set(handles.LettGradeText,'String','F');
    handles.LettGradeText.ForegroundColor = 'red';
end

PercentValue = num2str(PercentValue);

set(handles.PercentText,'String',strcat(PercentValue,'%'));


function Assign3_Callback(hObject, eventdata, handles)
% hObject    handle to Assign3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Assign3 as text
%        str2double(get(hObject,'String')) returns contents of Assign3 as a double


% --- Executes during object creation, after setting all properties.
function Assign3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Assign3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Assign4_Callback(hObject, eventdata, handles)
% hObject    handle to Assign4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Assign4 as text
%        str2double(get(hObject,'String')) returns contents of Assign4 as a double


% --- Executes during object creation, after setting all properties.
function Assign4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Assign4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Assign5_Callback(hObject, eventdata, handles)
% hObject    handle to Assign5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Assign5 as text
%        str2double(get(hObject,'String')) returns contents of Assign5 as a double


% --- Executes during object creation, after setting all properties.
function Assign5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Assign5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
