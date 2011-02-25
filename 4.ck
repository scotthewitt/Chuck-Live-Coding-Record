TriOsc t => JCRev j => dac;

10000 => t.freq;

for(0 => int i;i < 10; i++)
{
0.1 => t.gain;

3000::ms => now;

0.0 => t.gain;

3000::ms => now;
}
