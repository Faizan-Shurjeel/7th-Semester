clc;clear;close all
num1= [1]
den1 = [2 3]
sys1 = tf(num1, den1)
num2 = [4]
den2 = [5 6]
sys2 = tf(num2,den2)
%sys_series = series(sys1,sys2)
%step(sys_series)
%sys_parallel = parallel(sys1,sys2)
%step(sys_parallel)
%negative feedback
%sys_feedback = feedback(sys1,sys2)
%step(sys_feedback)
%positive feed back
%sys_feedback = feedback(sys1,sys2,1)
%step(sys_feedback)
%sys_1_feedback= feedback(sys1,1)
%step(sys_1_feedback)
sys_2_feedback= feedback(1,sys2)
step(sys_2_feedback)