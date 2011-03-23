Noise n => JCRev j => dac.chan(0);

n => Delay d => JCRev jj => dac.chan(1);

500::ms => d.max;

500::ms => d.delay;

while(1)
{
0.6 => n.gain;
10::ms => now;
0.0 => n.gain;
390::ms => now;
}
