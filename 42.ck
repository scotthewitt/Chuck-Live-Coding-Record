Noise n => Envelope e => dac;

4000::ms => e.duration;

0.9 => e.target;

1 => e.keyOn;

2000::ms => now;

0.0 => n.gain;
500::ms => now;
1. => n.gain;
1500::ms => now;

0.0 => e.target;

0 => e.keyOn;

300::ms => now;

