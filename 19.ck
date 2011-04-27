TriOsc t => Envelope e => JCRev j => Gain g => dac;

j => Delay d => g;

1000::ms => d.max;

800::ms => d.delay;

Std.rand2f(800,120) => t.freq;

100::ms => e.duration;
0.05 => t.gain;
while(1)
{
	1 => e.keyOn;
	150::ms => now;
	0 => e.keyOn;
	500::ms => now;
}

