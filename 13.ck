Noise n => JCRev j => dac;

while(1)
{
0.4 => n.gain;
100::ms => now;
0.0 => n.gain;
5000::ms => now;
}
