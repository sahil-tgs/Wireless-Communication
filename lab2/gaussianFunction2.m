% Code for generating a gaussian bell curve using rand() for generating random variable.

close all;
clear all;
clc;

% Define parameters for the Gaussian function
mu = 0;         % Mean
sigma = 1;      % Standard deviation

% Generate random x values from a standard normal distribution
x = sigma * randn(1, 1000) + mu;

% Calculate the Gaussian function values for each x
y = exp(-0.5 * ((x - mu) / sigma).^2) / (sigma * sqrt(2 * pi));

% Plot the Gaussian function
plot(x, y, 'o', 'MarkerSize', 4);
title('Gaussian Function');
xlabel('x');
ylabel('f(x)');
grid on;

% Optionally, display the mean and standard deviation
text(1, 0.4, sprintf('\\mu = %g', mu), 'FontSize', 12);
text(1, 0.35, sprintf('\\sigma = %g', sigma), 'FontSize', 12);

% Show the plot
pause;

