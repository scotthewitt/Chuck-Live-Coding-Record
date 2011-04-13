Noise n => Gain g => Pan2 p => dac;

while(1)
{
0.1 => g.gain;
 
100::ms => now;

0.0 => g.gain;

Std.rand2f(100,6000) * 1::ms => now;
}
