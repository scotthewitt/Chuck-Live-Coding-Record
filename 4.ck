TriOsc t => JCRev j => dac;

6000 => t.freq;

for(0 => int i;i < 10; i++)
{
0.05 => t.gain;

i * 1000::ms => now;

0.0 => t.gain;

i * 500::ms => now;
}
