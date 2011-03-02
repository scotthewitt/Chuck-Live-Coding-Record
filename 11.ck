TriOsc t => Envelope e => dac;

3000 => t.freq;

50::ms => e.duration;
while(1)
{
1 => e.keyOn;
100::ms => now;
0 => e.keyOn;
300::ms => now;
}
