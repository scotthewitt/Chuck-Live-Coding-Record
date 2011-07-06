SinOsc s => JCRev j => Gain g => dac;

2800 => s.freq;
0.3 => g.gain;

2000::ms => now;
