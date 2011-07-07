adc => Delay d => Gain g => blackhole;

5000::ms => d.max;
3000::ms => d.delay;

TriOsc t => Gain gg => JCRev j => dac;

2000 => t.freq;

function void control()
{
	while(1)
	{
	g.last() * 0.9 => gg.gain;
	20::ms => now;
	}
}

spork ~ control();

function void control2()
{
        while(1)
        {
        Std.rand2f(600,2000)  => t.freq;
        100::ms => now;
        }
}

control2();
