SinOsc s => dac;
//test
0.6 => s.gain;


while(1)
{
	Std.rand2f(300,400) => s.freq;
	400::ms => now;
}

//1000::ms => now;
