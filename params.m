clc; clear all;

% LQR Controller for Inverted Pendulum
% System Parameters
M = 1.0;        % Cart mass (kg)
m = 0.1;        % Pendulum mass (kg)
g = 9.81;       % Gravitational acceleration (m/s^2)
l = 1.0;        % Pendulum length (m)

% LQR Tuning Parameters
q11 = 1;        % Weight for cart position
q33 = 10;        % Weight for pendulum angle
r1 = 1;         % Control effort weight

% Initial Conditions
x_init = 0;             % Initial cart position (m)
x_d_init = 0;         % Initial cart velocity (m/s)
theta_init = 0.01;       % Initial pendulum angle (rad)
theta_d_init = 0;     % Initial pendulum angular velocity (rad/s)

% System Matrices
% Correct linearized state-space matrices
A = [0 1 0 0;
     (M+m)*g/(M*l) 0 0 0;
     0 0 0 1;
     -m*g/M 0 0 0];
B = [0; -1/(M*l); 0; 1/M];
C = [1 0 0 0; 0 0 1 0];

% LQR Weight Matrices
Q = [q11 0 0 0; 0 1 0 0; 0 0 q33 0; 0 0 0 1];
R = r1;

% Compute LQR 
p = care(A, B, Q, R);
k = lqr(A, B, Q, R);



