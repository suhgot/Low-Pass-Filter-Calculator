R_pot = logspace(0,4,200); % Log-spaced values from 1 Ohm to 10,000 Ohms

R_s = 471.01;  
R_p = 5007.18; 

% Compute Equivalent Resistance
R_eq = R_s + (R_pot .* R_p) ./ (R_pot + R_p);

C = 0.1e-6; % 0.1 µF capacitor

% Compute Cutoff Frequency
f_c = 1 ./ (2 * pi * R_eq * C);

% Verify frequency range
fprintf('Min cutoff frequency: %.2f Hz\n', min(f_c));
fprintf('Max cutoff frequency: %.2f Hz\n', max(f_c));

% Plot R_eq values
figure(1);
plot(R_pot, R_eq);
set(gca, 'XScale', 'log');
grid on;
xlabel('R_{pot} (Ohms)');
ylabel('Equivalent Resistance R_{eq} (Ohms)');
title('Variation of Equivalent Resistance with R_{pot}')

% Plot f_c values
figure(2);
plot(R_pot, f_c);
set(gca, 'XScale', 'log');
grid on;
xlabel('R_{pot} (Ohms)');
ylabel('Cutoff Frequency f_c (Hz)');
title('Variation of Cutoff Frequency with R_{pot}');
