TriOsc t => Envelope e => Delay d => Pan2 p => dac;

0.3 => t.gain;

e => p;

300::ms => d.max;

100::ms => d.delay;

Std.rand2f(2000,3000) => t.freq;
1 => e.keyOn;
200::ms => now;;
0 => e.keyOn;
200::ms => now; 

