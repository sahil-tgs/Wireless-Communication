function knife_edge_diffraction_plot()
    % Parameters
    d = 1:1000; % Distance between transmitter and receiver (meters)
    lambda = 0.1; % Wavelength (meters)
    h_t = 50; % Height of transmitter antenna (meters)
    h_r = 2; % Height of receiver antenna (meters)
    
    % Fresnel distance
    D = sqrt((h_t - h_r)^2 + d.^2);
    F = sqrt((d .* D) ./ (lambda * d));
    
    % Knife-edge diffraction loss calculation
    A = zeros(size(d));
    A(h_t > h_r) = 17.3;
    A(h_t <= h_r) = 6.9;
    
    % Loss in dB
    L = 20 * log10(F) + A;
    
    % Plot
    figure;
    plot(d, L, 'b', 'LineWidth', 2);
    xlabel('Distance (m)');
    ylabel('Knife-edge diffraction loss (dB)');
    title('Knife-edge Diffraction Loss vs Distance');
    grid on;
    xlim([min(d), max(d)]);
    ylim([min(L), max(L)]);
    legend('Knife-edge diffraction loss');
end

% Call the function to generate the plot
knife_edge_diffraction_plot();
