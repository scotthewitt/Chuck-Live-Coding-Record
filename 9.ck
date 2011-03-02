SinOsc s => JCRev j => Gain g => dac;

SinOsc ss => j;

SinOsc sss => j;

float f;

0.3 => j.gain;

function void lfo()
{
SawOsc l => blackhole;
1 => s.freq;
while(1)
{
l.last() * 0.1 => j.gain;
10::ms => now;
}
}

function void gg()
{
while(1)
{
0.0 => g.gain;
200::ms => now;
1 => g.gain;
200::ms => now;
}
}

spork ~ lfo();
spork ~ gg();

while(1)
{
Std.rand2f(1000,2000) => f => s.freq;
f + 120.0 => ss.freq;
f + 160 => ss.freq;
100::ms => now;
}
