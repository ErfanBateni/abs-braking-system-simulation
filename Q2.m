clc

roadType = 4; 

ON = 0;
out_noABS = sim('Project2_400100792', 25);
time_noABS = out_noABS.tout;
data_noABS = out_noABS.sOut;

ON = 1;
out_ABS = sim('Project2_400100792', 25);
time_ABS = out_ABS.tout;
data_ABS = out_ABS.sOut;

figure;

subplot(2,1,1);
plot(time_noABS, data_noABS(:, 5), 'b', 'LineWidth', 2); hold on;
plot(time_noABS, data_noABS(:, 9), 'r', 'LineWidth', 2);
title('Without ABS (Locking)');
xlabel('Time [s]'); ylabel('Speed [m/s]');
legend('Vehicle Speed', 'Wheel Speed');
grid on;

subplot(2,1,2);
plot(time_ABS, data_ABS(:, 5), 'b', 'LineWidth', 2); hold on;
plot(time_ABS, data_ABS(:, 9), 'r', 'LineWidth', 2);
title('With ABS (Slip Control)');
xlabel('Time [s]'); ylabel('Speed [m/s]');
legend('Vehicle Speed', 'Wheel Speed');
grid on;