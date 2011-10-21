SawOsc s => Gain g => dac;

//Envelope en;

0.1 => s.gain;

100 => s.freq;

Std.rand2f(100,120) => s.freq;

while(1)
{
//Std.rand2f(4000,6200) => s.freq;
50::ms => now;
0.0 => s.gain;
10000::ms => now;
0.1 => s.gain;
}
