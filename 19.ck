TriOsc t => Envelope e => JCRev j => Gain g => dac;

j => Delay d => g;

1000::ms => d.max;

800::ms => d.delay;

1000::ms => e.duration;

0.05 => t.gain;

while(1)
{
for(0 => int i; i < 2; i++)
{
Std.rand2f(2800,4600) => t.freq;
i * 0.05 => t.gain;
	1 => e.keyOn;
	1080::ms => now;
	0 => e.keyOn;
	1050::ms => now;
}
Std.rand2f(2900,8000) * 1::ms => now;
}

