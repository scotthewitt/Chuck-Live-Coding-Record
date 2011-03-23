adc => Gain g => Delay d => JCRev j => dac;

700::ms => d.max;

500::ms => d.delay;

while(1)
{
0.9 => g.gain;
100::ms => now;
0.0 => g.gain;
100::ms => now;
}
