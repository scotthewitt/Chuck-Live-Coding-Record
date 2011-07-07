adc => Delay d => Gain g => blackhole;

5000::ms => d.max;
3000::ms => d.delay;

TriOsc t => Gain gg => JCRev j => dac;

2000 => t.freq;

function void control()
{
	while(1)
	{
	g.last() * 0.5 => gg.gain;
	20::ms => now;
	}
}

control();
