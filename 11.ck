TriOsc t => Envelope e => dac;

3000 => t.freq;

100::ms => e.duration;

1 => e.keyOn;
1000::ms => now;
0 => e.keyOn;
1000::ms => now;

