SawOsc s => JCRev j => dac;

0.08 => s.gain;

while(1)
{
for(0 => int i; i < 10; i++)
{
Std.rand2f(100,140) => s.freq;
100::ms => now;
}

20 * 100::ms => now;

}
