%Lab 9, example task v1

clc;clear;close all
s=tf('s')
sys=(s+3)/(s*(s+1)*(s^2+4*s+16))
rlocus(sys)
%sgrid
axis([-6 6 -6 6])
[r,k]=rlocus(sys)