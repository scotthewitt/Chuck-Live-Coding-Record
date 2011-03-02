TriOsc t => Envelope e => dac;

3000 => t.freq;

50::ms => e.duration;

1 => e.keyOn;
100::ms => now;
0 => e.keyOn;
400::ms => now;

