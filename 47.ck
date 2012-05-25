Noise n => Gain g => Pan2 p => dac;

while(1)
{
0.2 => g.gain;	
100::ms => now;
0.0 => g.gain;
Std.rand2f(100,500) * 1::ms => now;
Std.rand2f(-1.,1.) => p.pan;
}
