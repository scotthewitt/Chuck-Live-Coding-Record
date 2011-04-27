TriOsc t => Envelope e => Gain auto => JCRev j => Gain g => dac;

j => Delay d => g;

1000::ms => d.max;

800::ms => d.delay;

20::ms => e.duration;

0.05 => t.gain;

function void gg()
{
while(1)
{
0.0 => auto.gain;
10::ms => now;
0.9 => auto.gain;
10::ms => now;
}
}

spork ~ gg();

while(1)
{
for(0 => int i; i < 10; i++)
{
Std.rand2f(200,300) => t.freq;
i * 0.05 => t.gain;
	1 => e.keyOn;
	50::ms => now;
	0 => e.keyOn;
	700::ms => now;
}
//Std.rand2f(2900,8000) * 1::ms => now;
}

