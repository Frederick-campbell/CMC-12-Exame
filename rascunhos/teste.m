s = tf('s');

G = (1 - s) / ((4 * s + 1) * (2 * s + 1));
Ts = 1;

Z = c2d(G, Ts);





sisotool




G = zpk(-5,[-1 -2 -3 -4],6,'OutputDelay',1);
G.InputName = 'u';  
G.OutputName = 'y';
t = pidTuner(G,'pi');

C = pid(0.64362,0.30314);
C.InputName = 'e';  
C.OutputName = 'u';






zeros = [];
den_roots = roots([1 4 6 4 1]);
%poly
poles = den_roots;
gain = 1;
ts = 0.5;
G = zpk(zeros, poles, gain);
G.InputName = 'u';  
G.OutputName = 'y';
t = pidTuner(G,'pid');



%s = zpk('s');
%sys = s / (s + 1)^4;
%G = pidtune(sys, 'PID');

