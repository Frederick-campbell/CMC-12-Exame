% ganho G = (1 - s) / ((4 * s + 1) * (2 * s + 1)):

figure;
hold on
grid on;

% sistema não-linear (com saturação)
parameters = BackCalculation(0);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values, '--');

% sistema não-linear (com saturação) com anti-windup (back calculation)
parameters = BackCalculation(1);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values);

print -dpng -r400 simu_backCalculation.png % para usuarios de Word
% print -depsc2 corrente_degrau.eps % para usuarios de LaTeX

%---------------------



