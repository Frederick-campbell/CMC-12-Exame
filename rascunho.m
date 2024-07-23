parameters.Kd = 2;
parameters.Ki = 0.18;
parameters.Kp = 1.27;
parameters.Kt = 1;


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