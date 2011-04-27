TriOsc t => Envelope e => JCRev j => Gain g => dac;

Std.rand2f(3000,5000) => t.freq;

100::ms => e.duration;
0.1 => t.gain;
while(1)
{
	1 => e.keyOn;
	200::ms => now;
	0 => e.keyOn;
	3000::ms => now;
}

