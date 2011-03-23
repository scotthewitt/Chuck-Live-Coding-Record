TriOsc t => Envelope e => JCRev j => dac;

4000 => t.freq;

0.01 => t.gain;

1000::ms => e.duration;

0.9 => e.target;

1 => e.keyOn;

1000::ms => now;

0.0 => e.target;

1 => e.keyOff;

1000::ms => now;
