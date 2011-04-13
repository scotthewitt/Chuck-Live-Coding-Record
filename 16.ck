Noise n => Gain g => Pan2 p => dac;

while(1)
{
0.3 => g.gain;
 
100::ms => now;

0.0 => g.gain;

Std.rand2f(-1.,1.) => p.pan;

Std.rand2f(3000,8000) * 1::ms => now;
}
