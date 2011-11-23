TriOsc t => JCRev j => dac;

600 => t.freq;

while(1)
{
for(0 => int i;i < 10; i++)
{
0.0 => t.gain;
100::ms => now;
0.01 => t.gain;
100::ms => now;
}

10 * 100::ms => now;
}
