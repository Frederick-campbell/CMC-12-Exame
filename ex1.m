s = tf('s');

G = (1 - s) / ((4 * s + 1) * (2 * s + 1));
Ts = 1;

Z = c2d(G, Ts);

sisotool