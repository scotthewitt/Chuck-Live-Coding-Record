Noise n => Gain g => Pan2 p => dac;

while(1)
{
0.02 => g.gain;	
50::ms => now;
0.0 => g.gain;
Std.rand2f(10000, 50000) * 1::ms => now;
Std.rand2f(-1.,1.) => p.pan;
}
