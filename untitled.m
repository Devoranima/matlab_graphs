%global a = 1
%global b = 0
%global c = 0


function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 14-May-2023 17:19:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
end

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


function aVar_Callback(hObject, eventdata, handles)
% hObject    handle to aVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end
% Hints: get(hObject,'String') returns contents of aVar as text
%        str2double(get(hObject,'String')) returns contents of aVar as a double


% --- Executes during object creation, after setting all properties.
function aVar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function bVar_Callback(hObject, eventdata, handles)
% hObject    handle to bVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bVar as text
%        str2double(get(hObject,'String')) returns contents of bVar as a double
end

% --- Executes during object creation, after setting all properties.
function bVar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function cVar_Callback(hObject, eventdata, handles)
% hObject    handle to cVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cVar as text
%        str2double(get(hObject,'String')) returns contents of cVar as a double
end

% --- Executes during object creation, after setting all properties.
function cVar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function markersAmount_Callback(hObject, eventdata, handles)
% hObject    handle to markersAmount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of markersAmount as text
%        str2double(get(hObject,'String')) returns contents of markersAmount as a double
end

% --- Executes during object creation, after setting all properties.
function markersAmount_CreateFcn(hObject, eventdata, handles)
% hObject    handle to markersAmount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function xWidth_Callback(hObject, eventdata, handles)
% hObject    handle to xWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xWidth as text
%        str2double(get(hObject,'String')) returns contents of xWidth as a double
end

% --- Executes during object creation, after setting all properties.
function xWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in createPlot.
function createPlot_Callback(hObject, eventdata, handles)
% hObject    handle to createPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(handles.doNotClear, 'Value') == 1)
    hold on
end
[a, b, c] = getParams(handles);

width = str2double(get(handles.xWidth, 'string'));
if (isnan(width))
    width = 4;
end
set(handles.xWidth, 'string', width)

dots = str2double(get(handles.markersAmount, 'string'));
if (isnan(dots))
    dots = 10;
end
set(handles.markersAmount, 'string', dots)

color = getColor(handles);

marker = get(handles.markersType, 'Value');
switch marker
    case 1
        m = '-';
    case 2
        m = '-s';
    case 3
        m = '-o';
    case 4
        m = '-*';
    case 5
        m = '-hexagram';
end

param = strcat(color, m);

discr = b.^2 - 4*a*c;
if ( discr < 0)
    head = - b /(2*a);
    xleft =head-width
    xright = head+width
else
    x1 = (-b - sqrt(discr))/(2*a);
    x2 = (-b + sqrt(discr))/(2*a);
    xleft = min(x1, x2) - width
    xright = max(x1, x2) + width
end

x=xleft:(width/dots):xright;
set(handles.axeMain, 'XLim', [xleft, xright]);

y=a*x.^2+b*x+c;
handles.Line = plot(x, y, param);
guidata(gcbo, handles)

hold off

end

% --- Executes on button press in plotClear.
function plotClear_Callback(hObject, eventdata, handles)
cla
% hObject    handle to plotClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in doNotClear_menu.
function doNotClear_menu_Callback(hObject, eventdata, handles)
% hObject    handle to doNotClear_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'on')
    set(hObject, 'checked', 'off')
    set(handles.doNotClear, 'Value', 0)
else
    set(hObject, 'checked', 'on')
    set(handles.doNotClear, 'Value', 1)
end
end
function doNotClear_Callback(hObject, eventdata, handles)
% hObject    handle to doNotClear_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject, 'Value') == 1)
    set(handles.doNotClear_menu, 'checked', 'on')
else
    set(handles.doNotClear_menu, 'checked', 'off')
end
end
% Hint: get(hObject,'Value') returns toggle state of doNotClear_menu


% --- Executes on selection change in markersType.
function markersType_Callback(hObject, eventdata, handles)
% hObject    handle to markersType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
marker = get(hObject, 'Value');
    switch marker
        case 1
            marker_none_Callback(handles.marker_none, eventdata, handles)
        case 2
            marker_squares_Callback(handles.marker_squares, eventdata, handles)
        case 3
            marker_circles_Callback(handles.marker_circles, eventdata, handles)
        case 4
            marker_stars_Callback(handles.marker_stars, eventdata, handles)
        case 5
            marker_hex_Callback(handles.marker_hex, eventdata, handles)
    end


% Hints: contents = cellstr(get(hObject,'String')) returns markersType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from markersType
end

% --- Executes during object creation, after setting all properties.
function markersType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to markersType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on button press in colorGreen.
function colorGreen_Callback(hObject, eventdata, handles)
% hObject    handle to colorGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject, 'Value') == 1)
    colorGreen_menu_Callback(handles.colorGreen_menu, eventdata, handles)
end
% Hint: get(hObject,'Value') returns toggle state of colorGreen
end

% --- Executes on button press in colorRed.
function colorRed_Callback(hObject, eventdata, handles)
% hObject    handle to colorRed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject, 'Value') == 1)
    colorRed_menu_Callback(handles.colorRed_menu, eventdata, handles)
end
% Hint: get(hObject,'Value') returns toggle state of colorRed

end

% --- Executes on button press in colorGreen.
function colorBlue_Callback(hObject, eventdata, handles)
% hObject    handle to colorGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of colorGreen
if (get(hObject, 'Value') == 1)
    colorBlue_menu_Callback(handles.colorBlue_menu, eventdata, handles)
end
end

% --- Executes on button press in colorBlack.
function colorBlack_Callback(hObject, eventdata, handles)
% hObject    handle to colorBlack (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject, 'Value') == 1)
    colorBlack_menu_Callback(handles.colorBlack_menu, eventdata, handles)
end
% Hint: get(hObject,'Value') returns toggle state of colorBlack
end

% --- Executes on button press in colorViolet.
function colorViolet_Callback(hObject, eventdata, handles)
% hObject    handle to colorViolet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject, 'Value') == 1)
    colorViolet_menu_Callback(handles.colorViolet_menu, eventdata, handles)
end
% Hint: get(hObject,'Value') returns toggle state of colorViolet
end


function x = getColor(handles)

if (get(handles.colorBlue, 'Value') == 1)
    x = 'b';
end
if (get(handles.colorGreen, 'Value') == 1)
    x = 'g';
end
if(get(handles.colorRed, 'Value') == 1)
    x = 'r';
end
if(get(handles.colorBlack, 'Value') == 1)
    x = 'k';
end
if (get(handles.colorViolet, 'Value') == 1)
    x = 'm';
end

end

function [a, b, c] = getParams(handles)

a = get(handles.aVar, 'string');
b = get(handles.bVar, 'string');
c = get(handles.cVar, 'string');

a = str2double(a);
b = str2double(b);
c = str2double(c);
if (isnan(a) || a == 0)
    a = 1;
end
if (isnan(b))
    b = 0;
end
if (isnan(c))
    c = 0;
end
set(handles.aVar, 'string', a);
set(handles.bVar, 'string', b);
set(handles.cVar, 'string', c);
end

% --- Executes on button press in set1.
function set1_Callback(hObject, eventdata, handles)
% hObject    handle to set1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.aVar, 'String', 1)
set(handles.bVar, 'String', 2)
set(handles.cVar, 'String', 1)
set(handles.markersAmount, 'String', 10)
set(handles.xWidth, 'String', 6)
end

% --- Executes on button press in set2.
function set2_Callback(hObject, eventdata, handles)
% hObject    handle to set2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.aVar, 'String', 1)
set(handles.bVar, 'String', 0)
set(handles.cVar, 'String', -1)
set(handles.markersAmount, 'String', 16)
set(handles.xWidth, 'String', 8)
end


% --------------------------------------------------------------------
function task_Callback(hObject, eventdata, handles)
% hObject    handle to task (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --------------------------------------------------------------------
function graph_Callback(hObject, eventdata, handles)
% hObject    handle to graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --------------------------------------------------------------------
function task1_Callback(hObject, eventdata, handles)
if strcmp(get(hObject, 'checked'), 'off')
    set(hObject, 'checked', 'on')
    set(handles.task2, 'checked', 'off')
    set(handles.task1_panel, 'Visible', 'on')
    set(handles.task1_text, 'Visible', 'on')
    set(handles.task2_text, 'Visible', 'off')
    cla
end
% hObject    handle to task1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --------------------------------------------------------------------
function task2_Callback(hObject, eventdata, handles)
if strcmp(get(hObject, 'checked'), 'off')
    set(hObject, 'checked', 'on')
    set(handles.task1, 'checked', 'off')
    set(handles.task1_panel, 'Visible', 'off')
    set(handles.task2_text, 'Visible', 'on')
    set(handles.task1_text, 'Visible', 'off')
    cla
end
% hObject    handle to task2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end


% --------------------------------------------------------------------
function color_menu_Callback(hObject, eventdata, handles)
% hObject    handle to color_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end

% --------------------------------------------------------------------
function colorBlue_menu_Callback(hObject, eventdata, handles)
% hObject    handle to colorBlue_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllColorsMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.colorBlue, 'Value', 1)
end
end

% --------------------------------------------------------------------
function colorGreen_menu_Callback(hObject, eventdata, handles)
% hObject    handle to colorGreen_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllColorsMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.colorGreen, 'Value', 1)
end
end

% --------------------------------------------------------------------
function colorBlack_menu_Callback(hObject, eventdata, handles)
% hObject    handle to colorBlack_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllColorsMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.colorBlack, 'Value', 1)
end
end

% --------------------------------------------------------------------
function colorRed_menu_Callback(hObject, eventdata, handles)
% hObject    handle to colorRed_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllColorsMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.colorRed, 'Value', 1)
end
end

% --------------------------------------------------------------------
function colorViolet_menu_Callback(hObject, eventdata, handles)
% hObject    handle to colorViolet_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllColorsMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.colorViolet, 'Value', 1)
end
end


function clearAllColorsMenu(handles)

set(handles.colorBlue_menu, 'checked', 'off')
set(handles.colorGreen_menu, 'checked', 'off')
set(handles.colorBlack_menu, 'checked', 'off')
set(handles.colorRed_menu, 'checked', 'off')
set(handles.colorViolet_menu, 'checked', 'off')

end


% --------------------------------------------------------------------
function markers_menu_Callback(hObject, eventdata, handles)
% hObject    handle to markers_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --------------------------------------------------------------------
function marker_none_Callback(hObject, eventdata, handles)
% hObject    handle to marker_none (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllMarkersMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.markersType, 'Value', 1)
end
end

% --------------------------------------------------------------------
function marker_squares_Callback(hObject, eventdata, handles)
% hObject    handle to marker_squares (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllMarkersMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.markersType, 'Value', 2)
end
end

% --------------------------------------------------------------------
function marker_circles_Callback(hObject, eventdata, handles)
% hObject    handle to marker_circles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllMarkersMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.markersType, 'Value', 3)
end
end

% --------------------------------------------------------------------
function marker_stars_Callback(hObject, eventdata, handles)
% hObject    handle to marker_stars (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllMarkersMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.markersType, 'Value', 4)
end
end

% --------------------------------------------------------------------
function marker_hex_Callback(hObject, eventdata, handles)
% hObject    handle to marker_hex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'off')
    clearAllMarkersMenu(handles)
    set(hObject, 'checked', 'on')
    set(handles.markersType, 'Value', 5)
end
end


function clearAllMarkersMenu(handles)
set(handles.marker_none, 'checked', 'off')
set(handles.marker_squares, 'checked', 'off')
set(handles.marker_circles, 'checked', 'off')
set(handles.marker_stars, 'checked', 'off')
set(handles.marker_hex, 'checked', 'off')
end
