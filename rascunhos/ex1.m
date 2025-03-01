parameters.Kd = 0.8;
parameters.Ki = 0.2;
parameters.Kp = 1.5;
parameters.Kt = 0;

Kd = parameters.Kd;
Ki = parameters.Ki;
Kp = parameters.Kp;

G = pid(Kd, Ki, Kd);
%G2 = pid2(Kd, Ki, Kd);

s = tf('s');
sys = 1 / (s + 1)^4;
G2 = pidtune(sys, 'pid');

step(G);