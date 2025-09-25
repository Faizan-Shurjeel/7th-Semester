clc;clear;close all
M = 1
b = 10
k = 20
Fa = 1
num = [1]
den = [M b k]

plant = tf(num,den)
kd = 41, ki = 1037, kp = 416
Baseline_controller_num = [kd kp ki]
Baseline_controller_den = [1 0]
Baseline_controller = tf(Baseline_controller_num,Baseline_controller_den)

%OL_sys = series(Baseline_controller,plant) %comment after importing from PID_Tuner
OL_sys = series(C,plant) %execute after importing from PID_Tuner

CL_sys = feedback(OL_sys,1)
stepinfo(CL_sys)

%pidTuner(plant,Baseline_controller)