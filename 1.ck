Noise n => Pan2 p => dac;
while(1)
{
for(0 => int i; i < 4; i++)
{
	Std.rand2f(-1.,1) => p.pan;
	Std.rand2f(0.01,0.6) => n.gain;
	100::ms => now;
	0.0 => n.gain;
	Std.rand2f(20,200) * 1::ms => now;
}
Std.rand2f(2000,8000) * 1::ms => now;
}
