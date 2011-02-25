TriOsc t => JCRev j => dac;

100 => t.freq;

for(0 => int i;i < 10; i++)
{
0.05 => t.gain;

i * 100::ms => now;

0.0 => t.gain;

i * 500::ms => now;
}
