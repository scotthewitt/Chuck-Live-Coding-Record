adc => blackhole;

SawOsc t => Gain gg => JCRev j => dac;

3000 => t.freq;

function void control()
{
	while(1)
	{
	adc.last() * 0.5 => gg.gain;
	2::ms => now;
	}
}

control();
