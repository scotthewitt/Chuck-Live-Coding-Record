TriOsc t => JCRev j => dac;

8000 => t.freq;

0.1 => t.gain;

3000::ms => now;

0.0 => t.gain;

3000::ms => now;
