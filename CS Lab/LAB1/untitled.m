%% EEE325 Control Systems Lab 1 - Complete MATLAB Solutions
%% Mathematical Modelling of Mechanical, Electrical, Electronic and Electromechanical Systems

clear all; close all; clc;

%% Given Parameters
C = 0.1e-6;        % 0.1 µF
L = 0.01;          % 0.01 H
R = 47e3;          % 47 kΩ

% DC Motor Parameters
Ra = 8;            % Armature Resistance (Ω)
La = 1.2e-3;       % Armature Inductance (H)
Kt = 0.04;         % Motor torque constant (N.m/A)
Kb = 0.04;         % Motor back EMF constant (V/(rad/s))
b = 0.00002;       % Motor viscous friction constant (N.m.s/rad)
J = 4e-6;          % Moment of Inertia (kg.m²)

% Mass-Spring-Damper Parameters (from pre-lab example)
M = 200;           % Mass (kg)
b_msd = 25;        % Damping coefficient (N.s/m)
k = 10;            % Spring constant (N/m)

%% =================== 1.4.1 ELECTRONIC SYSTEMS ===================

fprintf('=== 1.4.1 ELECTRONIC SYSTEMS ANALYSIS ===\n\n');

%% a) Transfer Function Implementation

% Integrator: G(s) = -1/(RCs)
num_int = [-1/(R*C)];
den_int = [1 0];  % s in denominator
sys_integrator = tf(num_int, den_int);

% Differentiator: G(s) = -RCs
num_diff = [-R*C 0];  % -RCs
den_diff = [1];       % 1 in denominator
sys_differentiator = tf(num_diff, den_diff);

fprintf('a) Transfer Functions:\n');
fprintf('Integrator Transfer Function:\n');
disp(sys_integrator);
fprintf('Differentiator Transfer Function:\n');
disp(sys_differentiator);

%% b) Pole-Zero-Gain Form

% Convert to pole-zero-gain form
[z_int, p_int, k_int] = zpkdata(sys_integrator, 'v');
[z_diff, p_diff, k_diff] = zpkdata(sys_differentiator, 'v');

sys_int_zpk = zpk(z_int, p_int, k_int);
sys_diff_zpk = zpk(z_diff, p_diff, k_diff);

fprintf('\nb) Pole-Zero-Gain Form:\n');
fprintf('Integrator ZPK:\n');
disp(sys_int_zpk);
fprintf('Differentiator ZPK:\n');
disp(sys_diff_zpk);

%% c) Poles and Zeros Evaluation

fprintf('\nc) Poles and Zeros:\n');
fprintf('Integrator - Poles: '); disp(p_int');
fprintf('Integrator - Zeros: '); disp(z_int');
fprintf('Differentiator - Poles: '); disp(p_diff');
fprintf('Differentiator - Zeros: '); disp(z_diff');

% Plot pole-zero map
figure(1);
subplot(1,2,1);
pzmap(sys_integrator);
title('Integrator Pole-Zero Map');
grid on;

subplot(1,2,2);
pzmap(sys_differentiator);
title('Differentiator Pole-Zero Map');
grid on;

%% d) Step Response Analysis

figure(2);
subplot(2,2,1);
step(sys_integrator, 10);
title('Integrator Step Response');
grid on;

subplot(2,2,2);
step(sys_differentiator, 0.1);
title('Differentiator Step Response');
grid on;

% Impulse response for differentiator (more meaningful)
subplot(2,2,3);
impulse(sys_integrator, 10);
title('Integrator Impulse Response');
grid on;

subplot(2,2,4);
impulse(sys_differentiator, 0.1);
title('Differentiator Impulse Response');
grid on;

%% e) Stability Analysis
fprintf('\ne) Stability Analysis:\n');
if all(real(p_int) <= 0)
    if any(real(p_int) == 0)
        fprintf('Integrator: Marginally Stable (pole at origin)\n');
    else
        fprintf('Integrator: Stable\n');
    end
else
    fprintf('Integrator: Unstable\n');
end

if isempty(p_diff)
    fprintf('Differentiator: No poles - Stable\n');
elseif all(real(p_diff) < 0)
    fprintf('Differentiator: Stable\n');
else
    fprintf('Differentiator: Unstable\n');
end

%% =================== 1.4.2 ELECTRICAL SYSTEM (RLC) ===================

fprintf('\n\n=== 1.4.2 ELECTRICAL SYSTEM (RLC CIRCUIT) ===\n\n');

%% a) Transfer Function Implementation
% G(s) = 1/(LCs² + RCs + 1)
num_rlc = [1];
den_rlc = [L*C, R*C, 1];
sys_rlc = tf(num_rlc, den_rlc);

fprintf('a) RLC Circuit Transfer Function:\n');
disp(sys_rlc);

%% b) Pole-Zero-Gain Form
[z_rlc, p_rlc, k_rlc] = zpkdata(sys_rlc, 'v');
sys_rlc_zpk = zpk(z_rlc, p_rlc, k_rlc);

fprintf('\nb) RLC Circuit ZPK Form:\n');
disp(sys_rlc_zpk);

%% c) Poles and Zeros Values
fprintf('\nc) RLC Circuit Poles and Zeros:\n');
fprintf('Poles: '); disp(p_rlc');
fprintf('Zeros: '); disp(z_rlc');
fprintf('Gain: %g\n', k_rlc);

% Calculate natural frequency and damping ratio
wn_rlc = sqrt(1/(L*C));
zeta_rlc = (R*C)/(2*sqrt(L*C));

fprintf('\nNatural frequency (ωn): %.2f rad/s\n', wn_rlc);
fprintf('Damping ratio (ζ): %.4f\n', zeta_rlc);

%% d) Step Response
figure(3);
subplot(2,2,1);
step(sys_rlc);
title('RLC Circuit Step Response');
grid on;

subplot(2,2,2);
pzmap(sys_rlc);
title('RLC Circuit Pole-Zero Map');
grid on;

% Bode plot
subplot(2,2,[3,4]);
bode(sys_rlc);
title('RLC Circuit Bode Plot');
grid on;

%% e) Stability Analysis
fprintf('\ne) RLC Circuit Stability Analysis:\n');
if all(real(p_rlc) < 0)
    fprintf('System is STABLE (all poles in left half-plane)\n');
elseif any(real(p_rlc) > 0)
    fprintf('System is UNSTABLE (poles in right half-plane)\n');
else
    fprintf('System is MARGINALLY STABLE (poles on imaginary axis)\n');
end

%% =================== 1.4.3 ELECTROMECHANICAL SYSTEM (DC MOTOR) ===================

fprintf('\n\n=== 1.4.3 ELECTROMECHANICAL SYSTEM (DC MOTOR) ===\n\n');

%% a & b) Speed Control Transfer Function and Step Response
% From the electrical and mechanical equations:
% Transfer function: Ω(s)/Va(s) = Kt/[(Js + b)(Las + Ra) + Kt*Kb]

num_speed = [Kt];
den_speed = conv([J, b], [La, Ra]) + [0, 0, Kt*Kb];
sys_speed = tf(num_speed, den_speed);

fprintf('a) DC Motor Speed Transfer Function:\n');
disp(sys_speed);

% Step response
figure(4);
subplot(2,2,1);
step(sys_speed);
title('DC Motor Speed Step Response');
ylabel('Speed (rad/s)');
grid on;

% Calculate performance parameters
step_info_speed = stepinfo(sys_speed);
fprintf('\nb) Speed Control Step Response Characteristics:\n');
fprintf('Rise Time: %.4f s\n', step_info_speed.RiseTime);
fprintf('Settling Time: %.4f s\n', step_info_speed.SettlingTime);
fprintf('Peak Time: %.4f s\n', step_info_speed.PeakTime);
fprintf('Overshoot: %.2f%%\n', step_info_speed.Overshoot);
fprintf('Final Value: %.4f rad/s per volt\n', dcgain(sys_speed));

%% c & d) Position Control Transfer Function and Step Response
% Position is integral of speed: Θ(s)/Va(s) = (1/s) * Ω(s)/Va(s)
num_pos = [Kt];
den_pos = conv([1, 0], den_speed);  % Add integrator (s in denominator)
sys_position = tf(num_pos, den_pos);

fprintf('\nc) DC Motor Position Transfer Function:\n');
disp(sys_position);

% Step response
subplot(2,2,2);
step(sys_position);
title('DC Motor Position Step Response');
ylabel('Position (rad)');
grid on;

% Calculate performance parameters
step_info_pos = stepinfo(sys_position);
fprintf('\nd) Position Control Step Response Characteristics:\n');
fprintf('Rise Time: %.4f s\n', step_info_pos.RiseTime);
fprintf('Settling Time: %.4f s\n', step_info_pos.SettlingTime);
if ~isempty(step_info_pos.PeakTime)
    fprintf('Peak Time: %.4f s\n', step_info_pos.PeakTime);
end
fprintf('Overshoot: %.2f%%\n', step_info_pos.Overshoot);
fprintf('Steady-state error: 0 (Type 1 system)\n');

% Pole-zero maps
subplot(2,2,3);
pzmap(sys_speed);
title('Speed Control Pole-Zero Map');
grid on;

subplot(2,2,4);
pzmap(sys_position);
title('Position Control Pole-Zero Map');
grid on;

% Stability analysis
fprintf('\nStability Analysis:\n');
poles_speed = pole(sys_speed);
poles_pos = pole(sys_position);

fprintf('Speed Control - Poles: ');
disp(poles_speed');
if all(real(poles_speed) < 0)
    fprintf('Speed Control System: STABLE\n');
else
    fprintf('Speed Control System: Check stability\n');
end

fprintf('Position Control - Poles: ');
disp(poles_pos');
if all(real(poles_pos) <= 0) && sum(real(poles_pos) == 0) <= 1
    fprintf('Position Control System: STABLE (with integrator)\n');
else
    fprintf('Position Control System: Check stability\n');
end

%% =================== 1.5 POST-LAB EXERCISE ===================

fprintf('\n\n=== 1.5 POST-LAB EXERCISE ===\n\n');

%% Exercise 1: Mass-Spring-Damper System
num_msd = [1];
den_msd = [M, b_msd, k];
sys_msd = tf(num_msd, den_msd);

fprintf('Post-Lab Exercise 1: Mass-Spring-Damper System\n');
disp(sys_msd);

% Calculate system characteristics
wn_msd = sqrt(k/M);
zeta_msd = b_msd/(2*sqrt(k*M));

fprintf('\nSystem Characteristics:\n');
fprintf('Natural frequency (ωn): %.4f rad/s\n', wn_msd);
fprintf('Damping ratio (ζ): %.4f\n', zeta_msd);

if zeta_msd < 1
    fprintf('System is UNDERDAMPED\n');
elseif zeta_msd == 1
    fprintf('System is CRITICALLY DAMPED\n');
else
    fprintf('System is OVERDAMPED\n');
end

% Step response
figure(5);
subplot(2,2,1);
step(sys_msd);
title('Mass-Spring-Damper Step Response');
xlabel('Time (s)');
ylabel('Displacement (m)');
grid on;

% Performance characteristics
step_info_msd = stepinfo(sys_msd);
fprintf('\nStep Response Characteristics:\n');
fprintf('Rise Time: %.4f s\n', step_info_msd.RiseTime);
fprintf('Settling Time: %.4f s\n', step_info_msd.SettlingTime);
fprintf('Peak Time: %.4f s\n', step_info_msd.PeakTime);
fprintf('Overshoot: %.2f%%\n', step_info_msd.Overshoot);

% Pole-zero map
subplot(2,2,2);
pzmap(sys_msd);
title('Mass-Spring-Damper Pole-Zero Map');
grid on;

% Impulse response
subplot(2,2,3);
impulse(sys_msd);
title('Mass-Spring-Damper Impulse Response');
grid on;

% Root locus (for controller design insight)
subplot(2,2,4);
rlocus(sys_msd);
title('Root Locus');
grid on;

%% Summary Table Generation
fprintf('\n\n=== SUMMARY TABLE ===\n');
fprintf('System\t\t\tStability\tType\t\tSS Error (Step)\n');
fprintf('--------------------------------------------------------\n');
fprintf('Integrator\t\tMarginal\tType 1\t\t0\n');
fprintf('Differentiator\t\tStable\t\tType 0\t\tHigh\n');
fprintf('RLC Circuit\t\tStable\t\tType 0\t\t%.4f\n', 1-dcgain(sys_rlc));
fprintf('DC Motor (Speed)\tStable\t\tType 0\t\t%.4f\n', 1-dcgain(sys_speed));
fprintf('DC Motor (Position)\tStable\t\tType 1\t\t0\n');
fprintf('Mass-Spring-Damper\tStable\t\tType 0\t\t%.4f\n', 1-dcgain(sys_msd));

%% Additional Analysis Functions

% Function to analyze system characteristics
function analyze_system(sys, name)
    fprintf('\n--- %s Analysis ---\n', name);
    
    % Display transfer function
    fprintf('Transfer Function:\n');
    disp(sys);
    
    % Poles and zeros
    p = pole(sys);
    z = zero(sys);
    
    fprintf('Poles: '); 
    if isempty(p)
        fprintf('None\n');
    else
        disp(p');
    end
    
    fprintf('Zeros: ');
    if isempty(z)
        fprintf('None\n');
    else
        disp(z');
    end
    
    % Stability
    if all(real(p) < 0)
        fprintf('Stability: STABLE\n');
    elseif any(real(p) > 0)
        fprintf('Stability: UNSTABLE\n');
    else
        fprintf('Stability: MARGINALLY STABLE\n');
    end
    
    % DC Gain
    dc_gain = dcgain(sys);
    fprintf('DC Gain: %.6f\n', dc_gain);
    
    % Step info if stable
    if all(real(p) < 0) || (all(real(p) <= 0) && sum(real(p) == 0) <= 1)
        try
            info = stepinfo(sys);
            fprintf('Rise Time: %.4f s\n', info.RiseTime);
            fprintf('Settling Time: %.4f s\n', info.SettlingTime);
            fprintf('Overshoot: %.2f%%\n', info.Overshoot);
        catch
            fprintf('Step response analysis not applicable\n');
        end
    end
end

% Create comparison plots
figure(6);
subplot(2,3,1); step(sys_integrator, 10); title('Integrator'); grid on;
subplot(2,3,2); step(sys_differentiator, 0.1); title('Differentiator'); grid on;
subplot(2,3,3); step(sys_rlc); title('RLC Circuit'); grid on;
subplot(2,3,4); step(sys_speed); title('DC Motor Speed'); grid on;
subplot(2,3,5); step(sys_position); title('DC Motor Position'); grid on;
subplot(2,3,6); step(sys_msd); title('Mass-Spring-Damper'); grid on;
sgtitle('Step Responses Comparison');

fprintf('\n=== MATLAB Analysis Complete ===\n');
fprintf('All plots have been generated and analysis results displayed.\n');
fprintf('Check the command window for numerical results and Figure windows for plots.\n');