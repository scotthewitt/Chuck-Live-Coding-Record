TriOsc t => Envelope e => Delay d => dac;

5000::ms => e.duration;

1 => e.keyOn;
9000::ms => now;
0 => e.keyOff;
9000::ms => now;
