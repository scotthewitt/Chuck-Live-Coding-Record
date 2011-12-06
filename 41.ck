SawOsc s => JCRev j => dac;

0.0 => s.gain;

while(1)
{
0.0 => s.gain;
for(0 => int i; i < 3; i++)
{
Std.rand2f(100,140) => s.freq;
100::ms => now;
}

0.0 => s.gain;

40 * 100::ms => now;

}
