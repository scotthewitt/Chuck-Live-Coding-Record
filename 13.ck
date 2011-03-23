Noise n => dac;

while(1)
{
0.3 => n.gain;
100::ms => now;
0.0 => n.gain;
500::ms => now;
}
