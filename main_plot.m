%% Plot the Prediction and Control Performance of KKMPC
%   yd  - Actual trajectory of the system
%   y_g - Predicted trajectory from the predictor component
%   ud  - Input sequence; in prediction mode, ud is generated randomly,
%         while in control mode, ud is the MPC solution
%   L   - Length of the collected data sequence
%   N   - Prediction horizon

clc;
clear;
%% Plot the prediction performance of Van del Pol Oscillator.
pre_van = load('VandelPol_predict_data.mat');
yd = pre_van.yd;
y_g = pre_van.y_g;
L = pre_van.L;
N = pre_van.N;

figure(1);
fig_pred = plot_predictor(yd, y_g, L, N);
%% Plot the control performance of Van del Pol oscillator.
control_van = load('VandelPol_control_data.mat');
yd = control_van.yd;
ud = control_van.ud;
N = control_van.N;

figure(2);
fig_control_1 = plot_control(yd, ud, N);
%% Plot the control performance of a non-affine system.
control_van = load('non_affine_control_data.mat');
yd = control_van.yd;
ud = control_van.ud;
N = control_van.N;

figure(3);
fig_control_2 = plot_control(yd, ud, N);