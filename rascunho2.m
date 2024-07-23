parameters.Kd = 0.8;
parameters.Ki = 0.2;
parameters.Kp = 1.5;
parameters.Kt = 0;

s = tf('s');
G = (1 - s) / ((4 * s + 1) * (2 * s + 1));
Ts = 1;
Z = c2d(G, Ts);
parameters.num = [Z.Numerator{1}(1) Z.Numerator{1}(2) Z.Numerator{1}(3)];
parameters.den = [Z.Denominator{1}(1) Z.Denominator{1}(2), Z.Denominator{1}(3)];
parameters.ts = 1;

parameters.upper_limit = 1.3;
parameters.lower_limit = 0;

parameters.step_time = 0;
parameters.initial_value = 0;
parameters.final_value = 1;
parameters.sample_time = 0;

%output = sim('untitled1.slx')

