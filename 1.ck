Noise n => Pan2 p => dac;
//while(1)
//{
for(0 => int i; i < 4; i++)
{
	1. => p.pan;
	Std.rand2f(0.5,0.9) => n.gain;
	100::ms => now;
	0.0 => n.gain;
	Std.rand2f(500,800) * 1::ms => now;
}
//Std.rand2f(100,120) * 1::ms => now;
//}
