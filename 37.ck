SawOsc s => dac;

function void lfo()
{
	SinOsc l => blackhole;
	.8  => l.freq;
		while(1)
		{			
		(l.last() * 5) + 1000 => s.freq;
		1::ms => now;
		}
}

spork ~ lfo();

while(1)
{
SinOsc ll => blackhole;

0.3 => ll.freq;

while(1)
{
ll.last() => s.gain;
1::ms => now;
}
}
