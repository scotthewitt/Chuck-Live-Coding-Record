TriOsc t => Envelope e => Delay d => dac;

50::ms => e.duration;
while(1)
{
Std.rand2f(600,900) => t.freq;
1 => e.keyOn;
90::ms => now;
0 => e.keyOn;
90::ms => now;
}
