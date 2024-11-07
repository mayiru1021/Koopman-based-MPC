# Koopman-based Data-Driven MPC
Paper on the way.
This repository contains the experiment results and related functions described in the paper "[Paper Title]" by [Author(s)]. 
The functions that help implement algorithms are given, inlucing kernel functions and hankel matrix functions.

## Table of Contents
- [Introduction](#introduction)
- [Requirements](#requirements)
- [Functions](#functions)
- [Results](#results)
- [Usage](#usage)
- [Citation](#citation)
- [License](#license)

## Introduction
This project implements the method proposed in "[Paper Title]" to [briefly describe the purpose of the project]. This method aims to presents am MPC scheme that ensures recursive feasibility and practical stability for nonlinear systems based on the Koopman operator, extending the aforementioned fundamental lemma to encompass nonlinear systems.. For more details, please refer to our paper.

## Requirements
The code is written in MATLAB and requires the following dependencies:
- MATLLAB 2019a
- Gurobi solver(https://www.gurobi.com)

## Functions
#### rbf.m
contains the common kernekl functions including: thinplat BF kernel, gauss kernel, inverse quadratic kernel, inverse multiquadratic kernel and polynomial kernel.
The function reference paper "Robust tube-based model predictive control with Koopman operators" by "Xinglong Zhang, Wei Pan, Riccardo Scattolini, Shuyou Yu and Xin Xu".

#### Hankel.m
can contruct Hankel matrix satisties Wiiliams' Fundamental Lemma.

## Results
#### VandelPol_control_data.mat
control process related data of Van del Pol oscillator.

##### VandelPol_predict_data.mat
prediction process related data of Van del Pol oscillator only using the multi-step predictor.

#### non_affine_control data.mat
control process related data of non-affine system.

#### Uinit_vandelpol.mat
random input sequence for Van del Pol oscillator.

#### Uinit_nonaffine.mat
random input sequence for non-affine system.

## Usage
run main_plot.mat to visualize the results
functions: rbf.m and Hankel.m can be used in projects about kernel methods and Hankel matrix.

## Citation
@article{yourpaper,
  title={Paper Title},
  author={Author(s)},
  journal={Journal Name},
  year={Year},
  volume={Volume},
  pages={Pages}
}

## License
This project is licensed under the MIT License. 
