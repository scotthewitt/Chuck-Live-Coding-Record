SinOsc s => dac;


while(1)
{
100::ms => now;
0.0 => s.gain;
Std.rand2f(1000,2000) => s.freq;
100::ms => now;
}
