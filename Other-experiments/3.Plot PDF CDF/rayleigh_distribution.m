clc;
sigma = 2;
sample_size = 10000;
x = linspace(0, 5, 10000);
pdf_values = (x ./ sigma^2) .* exp(-x.^2 / (2*sigma^2));
cdf_values = 1 - exp(-x.^2 / (2*sigma^2));

figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2);
title('PDF of Rayleigh distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;

figure;
plot(x, cdf_values, 'k-', 'LineWidth', 2);
title('CDF of Rayleigh distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;