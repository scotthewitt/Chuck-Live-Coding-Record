TriOsc t => Envelope e => Delay d => Pan2 p => dac;

0.3 => t.gain;

e => p;

300::ms => e.duration;

100::ms => e.delay;

Std.rand2f(2000,3000) => t.freq;
1 => e.keyOn;
200::ms => now;;
0 => e.keyOn;
200::ms => now; 

