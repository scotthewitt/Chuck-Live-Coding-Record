adc => Delay d => Gain g => blackhole;

5000::ms => d.max;
3000::ms => d.delay;

SawOsc t => Gain gg => JCRev j => dac;

6000 => t.freq;

function void control()
{
	while(1)
	{
	g.last() * 0.8 => gg.gain;
	2::ms => now;
	}
}

control();
