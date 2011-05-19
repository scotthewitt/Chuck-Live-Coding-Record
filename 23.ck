SawOsc s => Envelope e => Delay d => dac;

e => dac;

500::ms => d.max;

300::ms => d.delay;

0.3 => d.gain;

float ff;

180 => ff;

100::ms => e.duration;

function void lfo(float f)
{
	SinOsc l => blackhole;
	10 => l.freq;
while(1)
{
l.last() * 5 + f => s.freq;
1::ms => now;
}
}

spork ~ lfo(ff);

while(1)
{
	1 => e.keyOn;
	250::ms => now;
	0 => e.keyOn;
	250::ms => now;
}
