close all;
clc;

mu = 0;
sigma = 1.5;
sample_size = 100000;
rand_samples = mu + sigma * randn(sample_size, 1);
x = linspace(-5, 5, 100000);
pdf_values = (1 / (sigma * sqrt(2*pi))) * exp(-(x - mu).^2 / (2*sigma^2));
cdf_values = 0.5 * (1 + erf((x - mu) / (sigma * sqrt(2))));

figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2);
title('PDF of Gaussian distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;

figure;
plot(x, cdf_values, 'k:', 'LineWidth', 2);
title('CDF of Gaussian distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;