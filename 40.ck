SawOsc t => JCRev j => dac;

200 => t.freq;

while(1)
{
for(0 => int i;i < 2; i++)
{
0.0 => t.gain;
100::ms => now;
0.09 => t.gain;
100::ms => now;
}
0.0 => t.gain;
10 * 2000::ms => now;
}
