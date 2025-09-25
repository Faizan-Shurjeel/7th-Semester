clc;clear;close all
M=200;b=25;k=10;
num = [1];
den = [M b k];

sys = tf(num, den);
step (sys);
stepinfo(sys)