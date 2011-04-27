TriOsc t => Envelope e => JCRev j => Gain g => dac;

Std.rand2f(3000,5000) => t.freq;

1000::ms => e.duration;
0.1 => t.gain;
while(1)
{
	1 => e.keyOn;
	1500::ms => now;
	0 => e.keyOn;
	4500::ms => now;
}

