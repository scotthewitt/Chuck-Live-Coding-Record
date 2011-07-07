adc => blackhole;

SawOsc t => Gain gg => JCRev j => dac;

function void control()
{
	while(1)
	{
	adc.last() * 0.9 => gg.gain;
	2::ms => now;
	}
}

control();
