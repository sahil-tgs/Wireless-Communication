% Code for generating a gaussian bell curve using linspace for generating random variable.

clear all;
close all;
clc;

% Define parameters for the Gaussian function
mu = 0;         % Mean
sigma = 0.5;      % Standard deviation

% Generate x values
x = linspace(-5, 5, 1000);

% Calculate the Gaussian function values for each x
y = exp(-0.5 * ((x - mu) / sigma).^2) / (sigma * sqrt(2 * pi));

% Plot the Gaussian function
plot(x, y, 'LineWidth', 2);
title('Gaussian Function');
xlabel('x');
ylabel('f(x)');
grid on;

% Optionally, display the mean and standard deviation
text(0, 0.4, sprintf('\\mu = %g', mu), 'FontSize', 12);
text(0, 0.35, sprintf('\\sigma = %g', sigma), 'FontSize', 12);

% Show the plot
pause;

