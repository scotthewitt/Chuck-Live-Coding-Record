SinOsc s => dac;


while(1)
{
0.8 => s.gain;
10::ms => now;
0.0 => s.gain;
Std.rand2f(1000,2000) => s.freq;
10::ms => now;
}
