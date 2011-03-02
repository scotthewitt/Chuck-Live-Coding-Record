SinOsc s => JCRev j => dac;

SinOsc ss => j;

SinOsc sss => j;

float f;

0.3 => j.gain;

while(1)
{
Std.rand2f(100,200) => f => s.freq;
f + 20.0 => ss.freq;
f + 60 => ss.freq;
100::ms => now;
}
