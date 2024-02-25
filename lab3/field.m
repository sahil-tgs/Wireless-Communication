clc;
clear all;
close all;

% Number of points and range
num_points = 21;
range_m = 1000;

% Generate random x and y coordinates for points
x = rand(num_points, 1) * range_m;
y = rand(num_points, 1) * range_m;

% Set the first point's coordinates
x(1) = 300;
y(1) = 300;

% Calculate distances of each point from the reference point (300, 300)
distances = sqrt((x - 300).^2 + (y - 300).^2);

% Initialize colors matrix
colors = zeros(num_points, 3);

% Assign colors based on distances
colors(distances > 200, :) = repmat([0 1 0], sum(distances > 200), 1);

% Set the color of the reference point to red
colors(1, :) = [1 0 0];

% Transmit power parameters
trans_power = 40; % in dBm
gt = 1; % Gain of transmitting antenna
gr = 1; % Gain of receiving antenna
frequency = 9 * (10^9); % Frequency in Hz
lambda = 3 * (10^8) / frequency; % Wavelength in meters

% Calculate transmitted power at each point
power_transmitted = (gt * gr * trans_power * lambda^2) ./ (16 * pi^2 * distances.^2);

% Create scatter plot
figure;
scatter(x, y, 100, colors, 'filled');
xlabel('X (m)');
ylabel('Y (m)');
title('Power Transmitted at Each Point');
grid on;

% Add text annotations for each point with larger font size
for i = 1:num_points
    text(x(i), y(i), num2str(power_transmitted(i)), 'HorizontalAlignment', 'center', 'FontSize', 12);
end

