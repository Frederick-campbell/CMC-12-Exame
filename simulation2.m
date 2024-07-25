% ganho G = (1 - s) / ((4 * s + 1) * (2 * s + 1)):

figure;
hold on
grid on;

% sistema não-linear (com saturação)
parameters = IntegracaoCondicional(0);
outputOff = sim('integracao_condicional.slx');
plot(outputOff.tout, outputOff.y.signals.values, '--')

% sistema não-linear (com saturação) com anti-windup (integracao condicional)
parameters = IntegracaoCondicional(1);
outputOn = sim('integracao_condicional.slx');
plot(outputOn.tout, outputOn.y.signals.values);

legend('PID','PID + Integracao Condicional');

print -dpng -r400 simulation_integracaoCondicional.png % para usuarios de Word
% print -depsc2 corrente_degrau.eps % para usuarios de LaTeX

infoOff = stepinfo(outputOff.y.signals.values, outputOff.tout);
infoOn = stepinfo(outputOn.y.signals.values, outputOn.tout);

disp("Overshoot inicial: " + infoOff.Overshoot)
disp("Overshoot com antiwindup: " + infoOn.Overshoot)

disp("Reducao relativa tempo de acomodacao: " + ...
    100 * (infoOff.SettlingTime - infoOn.SettlingTime) / infoOn.SettlingTime) % reducao em porcentagem

%---------------------



