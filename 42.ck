Noise n => Envelope e => dac;

7000::ms => e.duration;

0.9 => e.target;

1 => e.keyOn;

3000::ms => now;

0.0 => n.gain;
500::ms => now;
0.1 => n.gain;
3500::ms => now;

0.0 => e.target;

0 => e.keyOn;

300::ms => now;

