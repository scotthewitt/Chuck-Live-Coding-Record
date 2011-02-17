SinOsc s => dac;
0.7 => s.gain;

while(1)
{
	Std.rand2f(300,400) => s.freq;
	200::ms => now;
}

//1000::ms => now;