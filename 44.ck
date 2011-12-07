SinOsc s => Gain g => dac;

0.1 => g.gain;

while(1)
{
Std.rand2f(1220,2480) => s.freq;
50::ms => now;
}
