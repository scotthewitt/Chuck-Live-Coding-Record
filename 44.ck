SawOsc s => Gain g => dac;

0.4 => g.gain;

//while(1)
//{
Std.rand2f(120,280) => s.freq;
20::ms => now;
//}
