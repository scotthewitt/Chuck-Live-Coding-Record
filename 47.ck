Noise n => Gain g => Pan2 p => dac;

while(1)
{
0.02 => g.gain;	
10::ms => now;
0.0 => g.gain;
Std.rand2f(8000, 10000) * 1::ms => now;
Std.rand2f(-1.,1.) => p.pan;
}
