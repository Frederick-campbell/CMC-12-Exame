% ganho G = (1 - s) / ((4 * s + 1) * (2 * s + 1)):

figure;
hold on
grid on;

% sistema não-linear (com saturação)
parameters = BackCalculation(0);
outputOff = sim('back_calculation.slx');
plot(outputOff.tout, outputOff.y.signals.values, '--');

% sistema não-linear (com saturação) com anti-windup (back calculation)
parameters = BackCalculation(1);
outputOn = sim('back_calculation.slx');
plot(outputOn.tout, outputOn.y.signals.values);

legend('PID + saturacao','PID + saturacao + Back Calculation');

print -dpng -r400 simulation_backCalculation.png % para usuarios de Word
% print -depsc2 corrente_degrau.eps % para usuarios de LaTeX

infoOff = stepinfo(outputOff.y.signals.values, outputOff.tout);
infoOn = stepinfo(outputOn.y.signals.values, outputOn.tout);

disp("Overshoot inicial: " + infoOff.Overshoot)
disp("Overshoot com antiwindup: " + infoOn.Overshoot)

disp("Reducao relativca tempo de resposta: " + ...
    100 * (infoOff.RiseTime - infoOn.RiseTime) / infoOn.RiseTime) % reducao em porcentagem

%---------------------



