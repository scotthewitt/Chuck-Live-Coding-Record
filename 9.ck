SinOsc s => JCRev j => Gain g => dac;

SinOsc ss => j;

SinOsc sss => j;

float f;

0.01 => j.gain;

function void lfo()
{
SawOsc l => blackhole;
1 => s.freq;
while(1)
{
l.last() * 0.4 => j.gain;
10::ms => now;
}
}

function void gg(dur d)
{
while(1)
{
0.0 => g.gain;
d => now;
1.0 => g.gain;
d => now;
}
}

spork ~ lfo();
spork ~ gg(10::ms);

while(1)
{
Std.rand2f(10000,20000) => f => s.freq;
f + 1020.0 => ss.freq;
f + 1600 => ss.freq;
100::ms => now;
}
