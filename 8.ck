SinOsc s => JCRev j => dac;

SinOsc ss => j;

SinOsc sss => j;

float f;

0.3 => j.gain;

function void lfo()
{
SawOsc l => blackhole;
0.001 => s.freq;
while(1)
{
l.last() * 0.3 => j.gain;
10::ms => now;
}
}

spork ~ lfo();

while(1)
{
Std.rand2f(100,200) => f => s.freq;
f + 20.0 => ss.freq;
f + 60 => ss.freq;
100::ms => now;
}
