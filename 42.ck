Noise n => Envelope e => dac;

0.1 => n.target;

300::ms => e.duration;

0.9 => e.target;

1 => e.keyOn;

300::ms => now;

0.0 => e.target;

0 => e.keyOn;

300::ms => now;

