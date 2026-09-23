clc

s = 0:0.1:100;

mu_dry = 0.9 * (1.07 * (1 - exp(-0.2773 * s)) - 0.0026 * s);
mu_wet = 0.7 * (1.07 * (1 - exp(-0.5 * s)) - 0.003 * s);
mu_snow = 0.3 * (1.07 * (1 - exp(-0.1773 * s)) - 0.006 * s);
mu_ice = 0.1 * (1.07 * (1 - exp(-0.38 * s)) - 0.007 * s);

figure;
plot(s, mu_dry, 'LineWidth', 2); hold on;
plot(s, mu_wet, 'LineWidth', 2);
plot(s, mu_snow, 'LineWidth', 2);
plot(s, mu_ice, 'LineWidth', 2);
grid on;
title('Friction Coefficient vs. Wheel Slip');
xlabel('Wheel slip [%]');
ylabel('Friction coefficient, \mu [-]');
legend('Dry Asphalt', 'Wet Asphalt', 'Snow', 'Ice');