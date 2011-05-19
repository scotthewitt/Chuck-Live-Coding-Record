SawOsc s => Envelope e => dac;

float ff;

180 => ff;

100::ms => e.duration;

function void lfo(float f)
{
	SinOsc l => blackhole;
	10 => l.freq;
while(1)
{
l.last() * 10 + f => s.freq;
1::ms => now;
}
}

spork ~ lfo(ff);

while(1)
{
	1 => e.keyOn;
	500::ms => now;
	0 => e.keyOn;
	500::ms => now;
}
