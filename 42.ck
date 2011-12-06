Noise n => Envelope e => dac;

0.1 => e.target;

7000::ms => e.duration;

0.9 => e.target;

1 => e.keyOn;

7000::ms => now;

0.0 => e.target;

0 => e.keyOn;

300::ms => now;

