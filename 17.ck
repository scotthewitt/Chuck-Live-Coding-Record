TriOsc t => Gain g => dac;
TriOsc tt => g;

while(1)
{
0.5 => g.gain;
1000 => t.freq;
2000 => tt.freq;
50::ms => now;
 0. => g.gain;
250::ms => now;
}
