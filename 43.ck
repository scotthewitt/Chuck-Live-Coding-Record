Noise n => Gain g => Pan2 p => dac;

function void pp()
{
SinOsc s => blackhole;

.1 => s.freq;

while(1)
{
s.last() => p.pan;
10::ms => now;
}
}

0.1 => n.gain;

spork ~ pp();

while(1)
{
0.9 => g.gain;
10::ms => now;
0.0 => g.gain;
200::ms => now;
}

10000::ms => now;
