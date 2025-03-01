function parameters = back_calculation3(Kt)
parameters.Kd = 0.8;
parameters.Ki = 0.18;
parameters.Kp = 2.5;
parameters.Kt = Kt;

s = tf('s');
alpha = 0.3;
G = 1 / ((s + 1) * (alpha * s + 1) * ((alpha^2) * s + 1) * ((alpha^3) + 1));
Ts = 0.1;
Z = c2d(G, Ts);
parameters.num = [Z.Numerator{1}(1) Z.Numerator{1}(2) Z.Numerator{1}(3) Z.Numerator{1}(4)];
parameters.den = [Z.Denominator{1}(1) Z.Denominator{1}(2) Z.Denominator{1}(3) Z.Denominator{1}(4)];
parameters.ts = Ts;

parameters.upper_limit = 1.7;
parameters.lower_limit = 0;

parameters.step_time = 0;
parameters.initial_value = 0;
parameters.final_value = 1;
parameters.sample_time = 0;

end