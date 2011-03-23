TriOsc t => Envelope e => JCRev j => dac;

2000 => t.freq;

0.01 => t.gain;

10000::ms => e.duration;

0.9 => e.target;

1 => e.noteOn;

10000::ms => now;

0.0 => e.target;

1 => noteOff;

10000::ms => now;
