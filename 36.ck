adc => Delay d => Gain g => blackhole;

5000::ms => d.max;
3000::ms => d.delay;

TriOsc t => Gain gg => dac;

6000 => t.freq;

function void control()
{
	while(1)
	{
	g.last() * 0.9 => gg.gain;
	5::ms => now;
	}
}

//spork ~ 

control();

function void control2()
{
Std.rand2f(400,900) => float f;
Std.rand2f(1400,2900) => float ff;

        while(1)
        {
        Std.rand2f(f,ff)  => t.freq;
        100::ms => now;
        }
}

//control2();

