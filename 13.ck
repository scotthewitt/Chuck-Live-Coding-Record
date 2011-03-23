Noise n => JCRev j => dac.chan(0);

n => Delay d => JCRev jj => dac.chan(1);

500::ms => d.max;

500::ms => d.delay;

while(1)
{
0.4 => n.gain;
50::ms => now;
0.0 => n.gain;
3050::ms => now;
}
