TriOsc t => Gain g => dac;
TriOsc tt => g;

function void lfo()
{
SawOsc s => blackhole;

0.05 => s.freq;

while(1)
{
s.last() * 10 + 1000 => t.freq;
t.freq() + 1000 => tt.freq;
10::ms => now;
}
}

spork ~ lfo();

while(1)
{
for(int ii; i < 10; i++)
{
i * 0.1 => g.gain;
//1000 => t.freq;
//2000 => tt.freq;
50::ms => now;
 0. => g.gain;
50::ms => now;
}
}
