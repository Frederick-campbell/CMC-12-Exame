s = tf('s');
G = 1 / (s + 1)^4;
PID = pidtune(G, 'pid');

Kd = PID.kd;
Ki = PID.ki;
Kp = PID.kp;
Kd = 2;
Ki = 0.18;
Kp = 1.27;

sys1 = feedback(G,1);
sys2 = pid(Kp, Ki, Kd);
sys3 = minreal(feedback(sys1 * sys2, 1));

step(sys3);





parameters.Kd = PID.kd;
parameters.Ki = PID.ki;
parameters.Kp = PID.kp;
parameters.Kt = 0;
