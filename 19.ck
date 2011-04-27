TriOsc t => Envelope e => JCRev j => Gain g => dac;

j => Delay d => g;

1000::ms => d.max;

800::ms => d.delay;

10::ms => e.duration;

0.05 => t.gain;

while(1)
{
for(0 => int i; i < 10; i++)
{
Std.rand2f(80,120) => t.freq;
i * 0.05 => t.gain;
	1 => e.keyOn;
	500::ms => now;
	0 => e.keyOn;
	150::ms => now;
}
Std.rand2f(900,4000) * 1::ms => now;
}

