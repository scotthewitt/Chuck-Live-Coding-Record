function void s1(float d)
{
	Noise n => dac;
	SawOsc s => dac;
	TriOsc t => dac;
	
	123. => s.freq;
	Std.rand2f(723.,768.) => t.freq;

	d * 1::ms => now;
}

function void s2(float dd)
{
        Noise n => dac;
        SawOsc s => dac;
        TriOsc t => dac;

        Std.rand2f(132.,138.) => s.freq;
        710 => t.freq;

        dd * 1::ms  => now;
}

function void m()
{
	while(1)
	{
		s1(Std.rand2f(300,900));
		<<< "s1" >>>;
		<<< now >>>;
		s2(Std.rand2f(200,800));
		<<< "s2" >>>;
		<<< now >>>;
	}
}

spork ~ m();

5::minute => now;
