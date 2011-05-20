SawOsc s => Envelope e => Pan2 p  => dac;

0.5 => s.gain;

120 => s.freq;

2000::ms => e.duration;

1. => e.keyOn;

3000::ms => now;

0.0 => e.keyOn;

3000::ms => now;
