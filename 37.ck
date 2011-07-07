SawOsc s => dac;

function void lfo()
{
	SinOsc l => blackhole;
	.07  => l.freq;
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

5.9 => ll.freq;

while(1)
{
ll.last() => s.gain;
1::ms => now;
}
}
