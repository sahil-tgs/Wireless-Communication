clear all;
close all;
clc;

a = 5;
b = 10;
sample_size = 10000;
x = linspace(a, b, 10000);
pdf_values = (1 / (b - a)) * ones(size(x));
cdf_values = (x - a) / (b - a);
cdf_values(cdf_values > 1) = 1;

figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2);
title('PDF of Uniform distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;

figure;
plot(x, cdf_values, 'k-', 'LineWidth', 2);
title('CDF of Uniform distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;