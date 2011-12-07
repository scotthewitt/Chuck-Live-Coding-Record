SinOsc s => Gain g => dac;

0.001 => g.gain;

while(1)
{
Std.rand2f(100,120) => s.freq;
100::ms => now;
}
