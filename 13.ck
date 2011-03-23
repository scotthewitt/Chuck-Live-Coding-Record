Noise n => JCRev j => dac;

n => Delay d => j;

500::ms => d.max;

500::ms => d.delay;

while(1)
{
0.4 => n.gain;
100::ms => now;
0.0 => n.gain;
3000::ms => now;
}
