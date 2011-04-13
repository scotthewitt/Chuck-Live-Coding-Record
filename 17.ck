TriOsc t => Gain g => dac;
SawOsc tt => g;

100 => float ff => float fff;

function void lfo()
{
SawOsc s => blackhole;

0.05 => s.freq;

while(1)
{
s.last() * 10 + ff => t.freq;
t.freq() * 10 + fff => tt.freq;
10::ms => now;
}
}

spork ~ lfo();

while(1)
{
for(int ii; ii < 10; ii++)
{
ii * 0.2 => g.gain;
//1000 => t.freq;
//2000 => tt.freq;
10::ms => now;
 0. => g.gain;
100::ms - (ii * 10::ms) => now;
}
400::ms => now;
Std.rand2f(300,800) => ff;
Std.rand2f(1000,4000) => fff;
}
