SawOsc s => Gain g => dac;

0.1 => g.gain;

while(1)
{
Std.rand2f(1220,3480) => s.freq;
20::ms => now;
}
