SinOsc s => JCRev j => Gain g => dac;

SinOsc ss => j;

2800 => s.freq;
4600 => ss.freq;

0.3 => g.gain;

2000::ms => now;
