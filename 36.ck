adc => blackhole;

SawOsc t => Gain gg => JCRev j => dac;

6000 => t.freq;

function void control()
{
	while(1)
	{
	adc.last() * 0.3 => gg.gain;
	2::ms => now;
	}
}

control();
