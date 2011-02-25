SawOsc s => dac;

130 => s.freq;
while(1)
{
0.01 => s.gain;

1000::ms => now;

0.0 => s.gain;

4000::ms => now;
}
