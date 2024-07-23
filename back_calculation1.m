function parameters = back_calculation1(Kt)

parameters.Kd = 2;
parameters.Ki = 0.18;
parameters.Kp = 1.27;
parameters.Kt = Kt;

s = tf('s');
G = 1 / (s + 1)^4;
Ts = 1 / 2;
Z = c2d(G, Ts);
parameters.num = [Z.Numerator{1}(1) Z.Numerator{1}(2) Z.Numerator{1}(3) Z.Numerator{1}(4) Z.Numerator{1}(5)];
parameters.den = [Z.Denominator{1}(1) Z.Denominator{1}(2) Z.Denominator{1}(3) Z.Denominator{1}(4) Z.Denominator{1}(5)];
parameters.ts = Ts;

parameters.upper_limit = 1.2;
parameters.lower_limit = 0;

parameters.step_time = 0;
parameters.initial_value = 0;
parameters.final_value = 1;
parameters.sample_time = 0;

end