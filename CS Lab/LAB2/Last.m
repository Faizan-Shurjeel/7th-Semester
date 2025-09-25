clc;clear;close all
Ra = 1
Kt = 10
Kb = 0.1
J = 2
b = 0.5
Ktac = 1

num = [1]
den = [J b]
sys2 = tf(1, Ra)
sys3 = tf(Kt)
serie = series(sys2,sys3)
feedeeer = feedback(serie,Kb)
sys1 = tf(num,den)
seri = series(serie,sys1)
feeder = feedback(feedeeer,Ktac)

stepinfo(feeder)