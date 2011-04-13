TriOsc t => Gain g => dac;
SawOsc tt => g;

function void lfo()
{
SawOsc s => blackhole;

0.05 => s.freq;

while(1)
{
s.last() * 10 + 100 => t.freq;
t.freq() * 10 + 80 => tt.freq;
10::ms => now;
}
}

spork ~ lfo();

while(1)
{
for(int ii; ii < 10; ii++)
{
ii * 0.1 => g.gain;
//1000 => t.freq;
//2000 => tt.freq;
10::ms => now;
 0. => g.gain;
100::ms - (ii * 10::ms) => now;
}
400::ms => now;
}
