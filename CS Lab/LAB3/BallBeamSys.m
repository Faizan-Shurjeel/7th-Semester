clc;clear;close all
m = 0.111 
R = 0.015
g = -9.8 
L = 1.0 
d = 0.03
J = 9.99 *(10^-6) 
num = (-m*g*d)/(L*(J/R^2+m))
den = [1 0 0]
plant = tf(num,den)
kd = 3, ki = 5, kp = 2
Baseline_controller_num = [kd kp ki]
Baseline_controller_den = [1 0]
Baseline_controller = tf(Baseline_controller_num,Baseline_controller_den)

%OL_sys = series(Baseline_controller,plant) %comment after importing from PID_Tuner
OL_sys = series(C,plant) %execute after importing from PID_Tuner

CL_sys = feedback(OL_sys,1)
stepinfo(CL_sys)

%pidTuner(plant,Baseline_controller)