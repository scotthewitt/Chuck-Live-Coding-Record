SawOsc s => JCRev j =>dac;

90 => s.freq;

while(1)
{
0.1 => s.gain;

10000::ms => now;

0.0 => s.gain;

1300::ms => now;
}
