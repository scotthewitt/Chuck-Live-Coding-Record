SawOsc s => dac;
SawOsc ss => dac;


140 => s.freq;
120 => ss.freq;
while(1)
{
//0.03 => s.gain;

1000::ms => now;

//0.0 => s.gain;

7000::ms => now;
}
