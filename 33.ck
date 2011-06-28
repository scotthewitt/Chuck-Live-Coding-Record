Noise n => Envelope g;
SawOsc s => g;
TriOsc t => g;

100::ms => g.duration;

g => Gain gg => dac;

g => Gain ggg => dac;

g => Gain gggg => dac;

function void s1()
{
	123. => s.freq;
	Std.rand2f(723.,768.) => t.freq;
		while(1)
		{
		1.0 => g.target;
		1 => g.keyOn;
		100::ms => now;
		1000::ms => now;
		0.0 => g.target;
		0 =>  g.keyOff;
<<< "kwy off">>>;
		200::ms => now;	
		}
}

spork ~ s1();

function void gateer()
{
	while(1)
{
0.1 => gg.gain;
25::ms => now;
0.0 => gg.gain;
25::ms => now;
}
}

spork ~ gateer();

function void gateer2()
{
        while(1)
{
0.1 => ggg.gain;
25::ms => now;
0.0 => ggg.gain;
25::ms => now;
}
}

spork ~ gateer2();

150::second => now;
