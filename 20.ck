SawOsc t => Envelope e => JCRev j => Gain g => dac;

//does not work (though sounds ace)
//Sam F calls it 'Audio Death'

j => Delay d => ResonZ rz => g;

.01 => rz.Q;
800 => rz.freq;


1000::ms => d.max;

800::ms => d.delay;

10::ms => e.duration;

0.05 => t.gain;

function void lfo()
{
SinOsc s => blackhole;
0.1 => s.freq;
while(1)
{
s.last() * 80 + 800 => rz.freq;
1::ms => now;
}
}

spork ~ lfo();

//while(1)
//{
for(0 => int i; i < 10; i++)
{
Std.rand2f(800,1600) => t.freq;
i * 0.05 => t.gain;
	1 => e.keyOn;
	80::ms => now;
	0 => e.keyOn;
	50::ms => now;
}
Std.rand2f(2900,8000) * 1::ms => now;
//}

