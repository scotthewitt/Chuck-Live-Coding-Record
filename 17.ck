TriOsc t => Gain g => dac;
TriOsc tt => g;

function void lfo()
{
SawOsc s => blackhole;

0.9 => s.freq;

while(1)
{
s.last() * 10 + 1000 => t.freq;
t.freq() + 1000 => tt.freq;
1::ms => now;
}
}

spork ~ lfo();

while(1)
{
0.3 => g.gain;
//1000 => t.freq;
//2000 => tt.freq;
500::ms => now;
 0. => g.gain;
500::ms => now;
}
