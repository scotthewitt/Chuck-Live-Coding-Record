TriOsc t => JCRev j => dac;

1900 => t.freq;

while(1)
{
for(0 => int i;i < 5; i++)
{
0.0 => t.gain;
100::ms => now;
0.05 => t.gain;
100::ms => now;
}
0.0 => t.gain;
10 * 200::ms => now;
}
