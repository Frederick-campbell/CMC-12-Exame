parameters.Kd = 2;
parameters.Ki = 0.18;
parameters.Kp = 1.27;
parameters.Kt = 0;


parameters.num = [1];
parameters.den = [1 4 6 4 1];
%parameters.gain = 1;
parameters.ts = 0.5;

parameters.upper_limit = 1.2;
parameters.lower_limit = 0;

parameters.step_time = 0;
parameters.initial_value = 0;
parameters.final_value = 1;
parameters.sample_time = 0;

%output = sim('untitled1.slx')








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
