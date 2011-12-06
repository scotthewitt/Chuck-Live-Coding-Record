SawOsc s => JCRev j => dac;

0.1 => s.gain;


for(0 => int i; i < 10 i++)
{
Std.rand2f(100,140) => s.freq;
100::ms => now;
}
