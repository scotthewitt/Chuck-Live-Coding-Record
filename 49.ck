SawOsc s => Envelope e => dac;

[90,100,80,95,100,90] @=> int hz[];

function void lfo()
{

SinOsc l => blackhole;
12.0 => l.freq;

	while(1)
	{
	l.last() * 20 + hz[0] => s.freq;
	10::ms => now;
	}

}

spork ~ lfo();

0 => int i; 

hz.size() => int j;

while(1)
{
Std.rand2(0, 5) => i;

hz[i] * 1.0 => s.freq;

0.2 => s.gain;

0.9 => e.target;
40::ms => e.duration;
1 => e.keyOn;
40::ms => now;
0.0 => e.target;
1 => e.keyOn;
40::ms => now;

0.0 => s.gain;
40::ms => now;

}

