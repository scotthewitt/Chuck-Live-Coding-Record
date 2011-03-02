TriOsc t => Envelope e => dac;

3000 => t.freq;

3000::ms => e.duration;

1 => e.keyOn;
4000::ms => now;
0 => e.keyOn;
4000::ms => now;

