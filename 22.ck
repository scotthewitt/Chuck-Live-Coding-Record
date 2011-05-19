SawOsc s => Envelope e => dac;

180 => s.freq;

100::ms => e.duration;

function void lfo()
{
	SinOsc l => blackhole;
	10 => l.freq;
while(1)
{
l.last() * 10 + 180 => s.freq;
1::ms => now;
}
}

spork ~ lfo();

while(1)
{
	1 => e.keyOn;
	500::ms => now;
	0 => e.keyOn;
	500::ms => now;
}
