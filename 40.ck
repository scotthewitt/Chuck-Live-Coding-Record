SawOsc t => JCRev j => dac;

160 => t.freq;

while(1)
{
for(0 => int i;i < 2; i++)
{
0.0 => t.gain;
100::ms => now;
0.1 => t.gain;
100::ms => now;
}
0.0 => t.gain;
2 * 200::ms => now;
}