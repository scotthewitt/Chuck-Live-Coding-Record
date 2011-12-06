SawOsc s => JCRev j => dac;

0.3 => s.gain;

while(1)
{
for(0 => int i; i < 3; i++)
{
Std.rand2f(100,140) => s.freq;
100::ms => now;
}

40 * 100::ms => now;

}
