SawOsc s => JCRev j => Gain g => dac;

SawOsc ss => j;

SawOsc sss => j;

float f;

0.3 => j.gain;

function void lfo()
{
SawOsc l => blackhole;
100 => s.freq;
while(1)
{
l.last() * 0.4 => j.gain;
1::ms => now;
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
Std.rand2f(100,180) => f => s.freq;
f + 10.0 => ss.freq;
f + 16.0 => ss.freq;
100::ms => now;
}
