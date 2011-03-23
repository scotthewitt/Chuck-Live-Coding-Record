Noise n => JCRev j => dac.chan(0);

n => Delay d => JCrev jj => dac.chan(1);

500::ms => d.max;

500::ms => d.delay;

while(1)
{
0.4 => n.gain;
100::ms => now;
0.0 => n.gain;
3000::ms => now;
}
