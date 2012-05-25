TriOsc t => Envelope e => Gain g => dac;

Std.rand2f(0.8,1.3) * 3000 => t.freq;

3000::ms => e.duration;

0.001 => g.gain;

0.9 => e.target;

1 => e.keyOn;

3000::ms => now;

0.0 => e.target;

0 => e.keyOff;

3000::ms => now;