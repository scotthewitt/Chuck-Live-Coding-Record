SawOsc s => dac;

function void lfo()
{
	SinOsc l => blackhole;
	100  => l.freq;
		while(1)
		{			
		(l.last() * 10) + 500 => s.freq;
		1::ms => now;
		}
}

//spork ~ 

lfo();

while(1)
{
Std.rand2f(180,300) => s.freq;
100::ms => now;
}
