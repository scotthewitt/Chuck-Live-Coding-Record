Noise n => Gain g => dac;

while(1)
{
0.7 => g.gain;	
100:ms => now;
0.0 => gain;
Std.rand2f(100,500) * 1::ms => now;
}
