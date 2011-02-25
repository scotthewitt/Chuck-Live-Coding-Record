SawOsc s => dac;

110 => s.freq;
while(1)
{
0.03 => s.gain;

1000::ms => now;

0.0 => s.gain;

7000::ms => now;
}
