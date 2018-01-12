function varargout = VotingGUI(varargin)
% VOTINGGUI MATLAB code for VotingGUI.fig
%      VOTINGGUI, by itself, creates a new VOTINGGUI or raises the existing
%      singleton*.
%
%      H = VOTINGGUI returns the handle to a new VOTINGGUI or the handle to
%      the existing singleton*.
%
%      VOTINGGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VOTINGGUI.M with the given input arguments.
%
%      VOTINGGUI('Property','Value',...) creates a new VOTINGGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VotingGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VotingGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VotingGUI

% Last Modified by GUIDE v2.5 11-Jul-2017 22:43:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VotingGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @VotingGUI_OutputFcn, ...
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


% --- Executes just before VotingGUI is made visible.
function VotingGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VotingGUI (see VARARGIN)

% Choose default command line output for VotingGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VotingGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global party1;
global party2;
global party3;
global party4;
global party5;
global voters_name;
global voters_id;

party1 = 0;
party2 = 0;
party3 = 0;
party4 = 0;
party5 = 0;
% Open Voter ID List File
filename = 'VotingList.xlsx';
[~, ~, raw] = xlsread(filename);
voters_name = raw(2:end, 2);
voters_id = raw(2:end, 3);

% --- Outputs from this function are returned to the command line.
function varargout = VotingGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbtn_party1.
function pushbtn_party1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbtn_party1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global party1;
global voters_name
global voters_id

prompt = {'Enter your Voter ID ?'};
dlg_title = 'Input';
num_lines = 1;
defaultans = {'1234567890'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
index = find([voters_id{:}] == str2double(answer));
if index
  %disp (voters_name(index));
  name = string(voters_name(index));
  party1 = party1+1;
  msgbox(sprintf('Thank you "%s" for voting',name),'Vote Success')
else
  errordlg('User Not Found','Database Error');
end

% --- Executes on button press in pushbtn_party2.
function pushbtn_party2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbtn_party2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global party2;
global voters_name
global voters_id

prompt = {'Enter your Voter ID ?'};
dlg_title = 'Input';
num_lines = 1;
defaultans = {'1234567890'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
index = find([voters_id{:}] == str2double(answer));
if index
  %disp (voters_name(index));
  name = string(voters_name(index));
  party2 = party2+1;
  msgbox(sprintf('Thank you "%s" for voting',name),'Vote Success')
else
  errordlg('User Not Found','Database Error');
end


% --- Executes on button press in pushbtn_party3.
function pushbtn_party3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbtn_party3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global party3;
global voters_name
global voters_id

prompt = {'Enter your Voter ID ?'};
dlg_title = 'Input';
num_lines = 1;
defaultans = {'1234567890'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
index = find([voters_id{:}] == str2double(answer));
if index
  %disp (voters_name(index));
  name = string(voters_name(index));
  party3 = party3+1;
  msgbox(sprintf('Thank you "%s" for voting',name),'Vote Success')
else
  errordlg('User Not Found','Database Error');
end


% --- Executes on button press in pushbtn_party4.
function pushbtn_party4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbtn_party4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global party4;
global voters_name
global voters_id

prompt = {'Enter your Voter ID ?'};
dlg_title = 'Input';
num_lines = 1;
defaultans = {'1234567890'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
index = find([voters_id{:}] == str2double(answer));
if index
  %disp (voters_name(index));
  name = string(voters_name(index));
  party4 = party4+1;
  msgbox(sprintf('Thank you "%s" for voting',name),'Vote Success')
else
  errordlg('User Not Found','Database Error');
end


% --- Executes on button press in pushbtn_party5.
function pushbtn_party5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbtn_party5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global party5;
global voters_name
global voters_id

prompt = {'Enter your Voter ID ?'};
dlg_title = 'Input';
num_lines = 1;
defaultans = {'1234567890'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
index = find([voters_id{:}] == str2double(answer));
if index
  %disp (voters_name(index));
  name = string(voters_name(index));
  party5 = party5+1;
  msgbox(sprintf('Thank you "%s" for voting',name),'Vote Success')
else
  errordlg('User Not Found','Database Error');
end

% --- Executes on button press in pushbtn_results.
function pushbtn_results_Callback(hObject, eventdata, handles)
% hObject    handle to pushbtn_results (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global party1;
global party2;
global party3;
global party4;
global party5;

total_votes = party1+party2+party3+party4+party5;

set(handles.text_party1_votes, 'String', party1);
set(handles.text_party2_votes, 'String', party2);
set(handles.text_party3_votes, 'String', party3);
set(handles.text_party4_votes, 'String', party4);
set(handles.text_party5_votes, 'String', party5);

set(handles.text_party1_votes_per, 'String', party1*100/total_votes);
set(handles.text_party2_votes_per, 'String', party2*100/total_votes);
set(handles.text_party3_votes_per, 'String', party3*100/total_votes);
set(handles.text_party4_votes_per, 'String', party4*100/total_votes);
set(handles.text_party5_votes_per, 'String', party5*100/total_votes);

set(handles.text_total_votes,  'String', total_votes);


% --- Executes on button press in pushbutton_reset.
function pushbutton_reset_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global party1;
global party2;
global party3;
global party4;
global party5;

party1 = 0;
party2 = 0;
party3 = 0;
party4 = 0;
party5 = 0;

