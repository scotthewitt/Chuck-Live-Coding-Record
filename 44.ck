SinOsc s => Gain g => dac;

0.01 => g.gain;

while(1)
{
Std.rand2f(120,280) => s.freq;
100::ms => now;
}
