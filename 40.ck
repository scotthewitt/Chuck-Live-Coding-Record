TriOsc t => JCRev j => dac;

for(0 => int i;i < 10; i++)
{
0.0 => t.gain;
100::ms => now;
0.01 => t.gain;
100::ms => now;
}
