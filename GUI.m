clear
clc
close all
format compact

%%All variables stated, to be used in the callback function
global slider
global xvaluebox 
global yvaluebox 
global zvaluebox 
global xvalue 
global yvalue 
global zvalue 

f=figure('position', [700 50 1000 1000], 'name', 'GUI', 'NumberTitle', 'off') %%Giving a name and positioning a figure for the GUI

title = uicontrol('Style','text',"BackgroundColor",'White','FontSize',20); %%creating a titletextbox and setting the properties for the title 
title.Position=[325 700 350 65] %%position of the title
title.String = ['Operator Control Panel'] %%The title being set to 'Operator Control Panel' 

instruction1 = uicontrol('Style','text','FontSize',10); %%A textbox being created for first instruction
instruction1.Position=[200 650 600 75] %%position of the textbox
instruction1.String = ['Step 1 - To analyse the limb angles refer to the matlab script, insert the requested angle for limb 1 in line 70 and limb angle 2 in line 77, once the script is ran the GUI will provide feedback ' ] %%first instruction stated

instruction2 = uicontrol('Style','text','FontSize',10); %%A textbox being created for second instruction
instruction2.Position=[200 600 610 90] %%position of the textbox
instruction2.String = ['Step 2 - Once the O and X is plotted, this represents limb 1 (O) and limb 2 (X) of the scara robot. To get the X and Y values hover over the graph points and they will be provided'] %%second instruction stated 

%pushbutton= uicontrol('Style','pushbutton','FontSize',15); %%created a pushbutton, with font size defined
%pushbutton.Position=[350 50 200 50] %%position of the pushbutton box 
%pushbutton.String=['FEEDBACK'] %%set the box to 'FEEDBACK'

%Slide=uicontrol('style', 'slider', 'min',0,'max', 180); %%Slider feature created 
%Slide.Position=[350 175 200 50]%%slider position stated
%Slidelabel = uicontrol('style','text') %%Slider text Label Created 
%Slidelabel.String=['Angle Range for limb 1'] %%setting the label to 'angle range'
%Slidelabel.Position=[150 160 200 50] %%setting the label position
%slidervalue='value', [0, 180] %%setting the value of the slider 

%Slide2=uicontrol('style', 'slider', 'min',0,'max', 360); %%Slider feature created 
%Slide2.Position=[350 100 200 50]%%slider position stated
%Slidelabel2 = uicontrol('style','text') %%Slider text Label Created 
%Slidelabel2.String=['Angle Range for limb 2'] %%setting the label to 'angle range'
%Slidelabel2.Position=[150 100 200 50] %%setting the label position 

xvaluebox=uicontrol('style','text') %%create textbox called xvaluebox
xvaluebox.Position=[700 500 75 15] %%position the textbox
xvaluebox.String=['X value'] %%set the string property of the text box to 'X Value'


yvaluebox=uicontrol('style','text') %%create textbox called yvalueboxlabel
yvaluebox.Position=[700 450 75 15] %%position the textbox
yvaluebox.String=['Y value']%%set the string property of the text box to 'Y Value'


zvaluebox = uicontrol('style','text') %%create textbox called zvalueboxlabel
zvaluebox.Position=[700 400 75 15] %%position the textbox
zvaluebox.String=['Z value'] %%set the string property of the text box to 'Z Value'


h=subplot('position',[0.2 0.35 0.45 0.4]);%% Creating The Graph and position
l1 = 1100; %% length of first limb
theta1=40%%Angle of first limb

l2 = 1300; %% length of second Limb
theta2=45 %%Angle of second limb

%%creating the for loop to plot all posible positions on the graph 
for theta1 = 90; %%polotting from 0 to 180 degrees 
  theta1=deg2rad(theta1) %%chnaging theta from degrees to radians 
    
x1=l1*cos(theta1); %%using Trigonomarty   
y1=l1*sin(theta1); %%Calculating X and Y values 


    for theta2 = 30;
    theta2 = theta1 + deg2rad(theta2);
    
x2=x1+l2*cos(theta2); %%Using Triaganomarty  
y2=y1+l2*sin(theta2);%% Calculating X and Y values at the second point 


    

plot(x1,y1,'-o', 'markersize',10)
axis([-3000 3000 0 3000])
hold on

plot(x2,y2,'-x', 'markersize',10)
axis([-3000 3000 0 3000])
hold on

end

end 
