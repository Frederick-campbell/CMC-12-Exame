% ganho G = 1 / (s + 1)^4:

figure;
hold on
grid on;

% sistema não-linear (com saturação)
parameters = back_calculation1(0);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values, '--');

% sistema não-linear (com saturação) com anti-windup (back calculation)
parameters = back_calculation1(1);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values);

print -dpng -r400 simu1_backCalculation.png % para usuarios de Word
% print -depsc2 corrente_degrau.eps % para usuarios de LaTeX

%---------------------

% ganho G = (1 - s) / ((4 * s + 1) * (2 * s + 1)):

figure;
hold on
grid on;

% sistema não-linear (com saturação)
parameters = back_calculation2(0);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values, '--');

% sistema não-linear (com saturação) com anti-windup (back calculation)
parameters = back_calculation2(1);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values);

print -dpng -r400 simu2_backCalculation.png % para usuarios de Word
% print -depsc2 corrente_degrau.eps % para usuarios de LaTeX

%---------------------

% ganho G = (1 - s) / ((4 * s + 1) * (2 * s + 1)):

figure;
hold on
grid on;

% sistema não-linear (com saturação)
parameters = back_calculation3(0);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values, '--');

% sistema não-linear (com saturação) com anti-windup (back calculation)
parameters = back_calculation3(1);
output = sim('back_calculation.slx');
plot(output.tout, output.y.signals.values);

print -dpng -r400 simu3_backCalculation.png % para usuarios de Word
% print -depsc2 corrente_degrau.eps % para usuarios de LaTeX




