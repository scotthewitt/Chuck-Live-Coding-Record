SinOsc s => Gain g => dac;

0.1 => g.gain;

//while(1)
//{
Std.rand2f(220,480) => s.freq;
100::ms => now;
//}
