SawOsc s => dac;

function void lfo()
{
	SinOsc l => blackhole;
	2.8  => l.freq;
		while(1)
		{			
		(l.last() * 4000) + 100 => s.freq;
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
