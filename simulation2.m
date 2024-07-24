% ganho G = (1 - s) / ((4 * s + 1) * (2 * s + 1)):

figure;
hold on
grid on;

% sistema não-linear (com saturação)
parameters = IntegracaoCondicional(0);
output = sim('integracao_condicional.slx');
plot(output.tout, output.y.signals.values, '--');

% sistema não-linear (com saturação) com anti-windup (integracao condicional)
parameters = IntegracaoCondicional(1);
output = sim('integracao_condicional.slx');
plot(output.tout, output.y.signals.values);

print -dpng -r400 simulation_integracaoCondicional.png % para usuarios de Word
% print -depsc2 corrente_degrau.eps % para usuarios de LaTeX

%---------------------



