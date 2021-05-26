%%to clear the command window 
clear
clc
close all
format compact

%%setting the variables 
l1 = 1100; %% length of first limb
theta1=40 %%Angle of first limb

l2 = 1300; %% length of second Limb
theta2=45 %%Angle of second limb



%%creating the for loop to plot all posible positions on the graph 
for theta1 = 0:5:180; %%polotting from 0 to 180 degrees 
  theta1=deg2rad(theta1) %%chnaging theta from degrees to radians 
    
x1=l1*cos(theta1); %%using Trigonomarty   
y1=l1*sin(theta1); %%Calculating X and Y values 


    for theta2 = 0:5:120;
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
    
x3=0 , y3=0
x4=-3000, y4=0
x5=-3000, y5=2000
x6=0, y6=2000
x7=0, y7=0

x=[x3 x4 x5 x6 x7]
y=[y3 y4 y5 y6 y7]

plot(x,y,'g','linewidth',3)

x8=-1000 , y8=600
x9=-1900, y9=600
x10=-1900, y10=1300
x11=-1000, y11=1300
x12=-1000, y12=600

xx=[x8 x9 x10 x11 x12]
yy=[y8 y9 y10 y11 y12]

plot(xx,yy,'r','linewidth',3)