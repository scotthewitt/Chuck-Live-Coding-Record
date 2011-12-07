Noise n => Gain g => Pan2 p => dac;

function void pp()
{
SinOsc s => blackhole;

1. => s.freq;

while(1)
{
s.last() => p.pan;
10::ms => now;
}
}

0.1 => n.gain;

while(1)
{
0.9 => g.gain;
100::ms => now;
0.0 => g.gain;
500::ms => now;
}

10000::ms => now;
