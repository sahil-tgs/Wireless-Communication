clear all;
close all; 
clc;

% Define values for sigma
sigmas = [0.5, 1, 2];    % Standard deviations

% Generate x values using linspace
x = linspace(-5, 5, 1000);

% Plot Gaussian cumulative distribution functions with mu = 0 and different sigma values
figure;
hold on;

for i = 1:length(sigmas)
    sigma = sigmas(i);

    % Calculate the Gaussian cumulative distribution function values for each x with mu = 0
    cdf_values = normcdf(x, 0, sigma);

    % Plot the CDF
    plot(x, cdf_values, 'LineWidth', 2, 'DisplayName', sprintf('\\sigma = %g', sigma));
end

hold off;

% Add labels and legend
title('Comparison of Gaussian Cumulative Distribution Functions with \mu = 0');
xlabel('x');
ylabel('CDF(x)');
legend('show');
grid on;
