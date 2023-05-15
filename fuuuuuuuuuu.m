function varargout = fuuuuuuuuuu(varargin)
% FUUUUUUUUUU MATLAB code for fuuuuuuuuuu.fig
%      FUUUUUUUUUU, by itself, creates a new FUUUUUUUUUU or raises the existing
%      singleton*.
%
%      H = FUUUUUUUUUU returns the handle to a new FUUUUUUUUUU or the handle to
%      the existing singleton*.
%
%      FUUUUUUUUUU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUUUUUUUUUU.M with the given input arguments.
%
%      FUUUUUUUUUU('Property','Value',...) creates a new FUUUUUUUUUU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuuuuuuuuuu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuuuuuuuuuu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuuuuuuuuuu

% Last Modified by GUIDE v2.5 04-Apr-2023 15:04:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuuuuuuuuuu_OpeningFcn, ...
                   'gui_OutputFcn',  @fuuuuuuuuuu_OutputFcn, ...
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
end
% End initialization code - DO NOT EDIT


% --- Executes just before fuuuuuuuuuu is made visible.
function fuuuuuuuuuu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuuuuuuuuuu (see VARARGIN)

% Choose default command line output for fuuuuuuuuuu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuuuuuuuuuu wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end


% --- Outputs from this function are returned to the command line.
function varargout = fuuuuuuuuuu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


% --- Executes during object creation, after setting all properties.
function axeMain_CreateFcn(hObject, eventdata, handles)

end
% hObject    handle to axeMain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axeMain


% --- Executes on button press in createFigure.
function createFigure_Callback(hObject, eventdata, handles)
x=-2:0.2:2;
var = get(handles.editFun, 'string');
var = str2double(var);
y=exp(-(x*var).^2);
handles.Line = plot(x, y);
guidata(gcbo, handles)
set(handles.typeOfElement, 'visible', 'on')
set(handles.popupmenu1, 'visible', 'on')
set(hObject, 'visible', 'off')
set(handles.clearFigure, 'visible', 'on')
set(handles.scrWidth, 'visible', 'on')
set(handles.editFun, 'visible', 'off')
if get(handles.gridX, 'Value')
    set(handles.axeMain, 'XGrid', 'on')
else
    set(handles.axeMain, 'XGrid', 'off')
end
if get(handles.gridY, 'Value')
    set(handles.axeMain, 'YGrid', 'on')
else
    set(handles.axeMain, 'YGrid', 'off')
end
end
% hObject    handle to createFigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clearFigure.
function clearFigure_Callback(hObject, eventdata, handles)
cla
set(handles.typeOfElement, 'visible', 'off')
set(handles.popupmenu1, 'visible', 'off')
set(handles.createFigure, 'visible', 'on')
set(handles.clearFigure, 'visible', 'off')
set(handles.gridX, 'value', 0)
set(handles.gridY, 'value', 0)
set(handles.mnGridX, 'checked', 'off')
set(handles.mnGridY, 'checked', 'off')
set(handles.axeMain, 'XGrid', 'off')
set(handles.axeMain, 'YGrid', 'off')
set(handles.scrWidth, 'visible', 'off')
set(handles.editFun, 'visible', 'on')
% hObject    handle to clearFigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in gridX.
function gridX_Callback(hObject, eventdata, handles)
    if (get(hObject, 'Value'))
        set(handles.axeMain, 'XGrid', 'on')
        set(handles.mnGridX, 'checked', 'on')
    else
        set(handles.axeMain, 'XGrid', 'off')
        set(handles.mnGridX, 'checked', 'off')
    end
    
% hObject    handle to gridX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gridX
end

% --- Executes on button press in gridY.
function gridY_Callback(hObject, eventdata, handles)
    if (get(hObject, 'Value'))
        set(handles.axeMain, 'YGrid', 'on')
        set(handles.mnGridY, 'checked', 'on')
    else
        set(handles.axeMain, 'YGrid', 'off')
        set(handles.mnGridY, 'checked', 'off')
    end
% hObject    handle to gridY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gridY
end


% --- Executes on button press in square.
function square_Callback(hObject, eventdata, handles)
    set(handles.Line, 'Marker', 's')
end
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of square


% --- Executes on button press in circle.
function circle_Callback(hObject, eventdata, handles)
        set(handles.Line, 'Marker', 'o')
end
% hObject    handle to circle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of circle


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
        set(handles.Line, 'Marker', 'none')
end
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
    color = get(hObject, 'Value')
    switch color
        case 1
            set(handles.Line, 'Color', 'blue')
        case 2
            set(handles.Line, 'Color', 'red')
        case 3
            set(handles.Line, 'Color', 'green')
    end
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

end
% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on slider movement.
function scrWidth_Callback(hObject, eventdata, handles)
% hObject    handle to scrWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    width = get(hObject, 'Value')
    set(handles.Line, 'LineWidth', round(width))

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
end

% --- Executes during object creation, after setting all properties.
function scrWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scrWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

end



function editFun_Callback(hObject, eventdata, handles)
% hObject    handle to editFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFun as text
%        str2double(get(hObject,'String')) returns contents of editFun as a double
end

% --- Executes during object creation, after setting all properties.
function editFun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end


% --- Executes during object deletion, before destroying properties.
function editFun_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to editFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --------------------------------------------------------------------
function mnGraphPlot_Callback(hObject, eventdata, handles)
% hObject    handle to mnGraphPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   createFigure_Callback(handles.createFigure, eventdata, handles)
end

% --------------------------------------------------------------------
function mnGraphClear_Callback(hObject, eventdata, handles)
% hObject    handle to mnGraphClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    clearFigure_Callback(handles.clearFigure, eventdata, handles)
end


% --------------------------------------------------------------------


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --------------------------------------------------------------------
function mnGridX_Callback(hObject, eventdata, handles)
% hObject    handle to niggers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'on')
    set(hObject, 'checked', 'off')
    set(handles.axeMain, 'XGrid', 'off')
    set(handles.gridX, 'value', 0)
else
    set(hObject, 'checked', 'on')
    set(handles.axeMain, 'XGrid', 'on')
    set(handles.gridX, 'value', 1)
end
end

% --------------------------------------------------------------------
function mnGridY_Callback(hObject, eventdata, handles)
% hObject    handle to mnGridX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(hObject, 'checked'), 'on')
    set(hObject, 'checked', 'off')
    set(handles.axeMain, 'YGrid', 'off')
    set(handles.gridY, 'value', 0)
else
    set(hObject, 'checked', 'on')
    set(handles.axeMain, 'YGrid', 'on')
    set(handles.gridY, 'value', 1)
end
end
