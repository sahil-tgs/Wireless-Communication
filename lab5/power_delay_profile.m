clc; clear all; close all;

% Define gain and delays
gain = [-20, -10, -10, -20];
power = 10.^(gain/10); 
delays = [1, 2, 3, 4];

% Calculate delay spread, mean delay, and RMS delay
delay_spread = max(delays) - min(delays);
mean_delay = sum(power.*delays) / sum(power);
rms_delay = sqrt(sum(power.*(delays - mean_delay).^2) / sum(power));

% Display results
fprintf('Delay Spread: %.2f\n', delay_spread);
fprintf('Mean Delay: %.2f\n', mean_delay);
fprintf('RMS Delay: %.2f\n', rms_delay);

% Plot Power Delay Profile
plot(delays, power, 'LineWidth', 1.5);
xlabel('Delay (units)');
ylabel('Power');
title('Power Delay Profile');
grid on;
