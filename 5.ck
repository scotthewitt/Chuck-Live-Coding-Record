SawOsc s => dac;
SawOsc ss => dac;
Noise n => dac;

0.7 => n.gain;

20040 => s.freq;
22000 => ss.freq;
while(1)
{
//0.03 => s.gain;

1000::ms => now;

//0.0 => s.gain;

7000::ms => now;
}
