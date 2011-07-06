TriOsc t => Envelope e => Delay d => dac;

500::ms => e.duration;

1 => e.keyOn;
900::ms => now;
0 => e.keyOff;
900::ms => now;
