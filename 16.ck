Noise n => Gain g => Pan2 p => dac;

while(1)
{
0.3 => g.gain;
 
100::ms => now;

0.0 => g.gain;

Std.rand2f(-1.,1.) => p.pan;

Std.rand2f(8000,10000) * 1::ms => now;
}
