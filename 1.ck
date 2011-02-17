Noise n => dac;
while(1)
{
0.1 => n.gain;
300::ms => now;
0.0 => n.gain;
Std.rand2f(3000,8000) * 1::ms => now;
}
