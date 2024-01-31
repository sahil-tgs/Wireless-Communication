% Code for generating a gaussian bell curve using linspace for generating random variable.

close all;
clear all;
clc;

% Define values for sigma
sigmas = [0.5, 1, 2];    % Standard deviations

% Generate x values using linspace
x = linspace(-5, 5, 1000);

% Plot Gaussian functions with mu = 0 and different sigma values
figure;
hold on;

for i = 1:length(sigmas)
    sigma = sigmas(i);

    % Calculate the Gaussian function values for each x with mu = 0
    y = exp(-0.5 * (x / sigma).^2) / (sigma * sqrt(2 * pi));

    % Plot the Gaussian function
    plot(x, y, 'LineWidth', 2, 'DisplayName', sprintf('\\sigma = %g', sigma));
end

hold off;

% Add labels and legend
title('Comparison of Gaussian Functions with \mu = 0');
xlabel('x');
ylabel('f(x)');
legend('show');
grid on;

