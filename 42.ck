Noise n => Envelope e => dac;

function void chopper()
{
while(1)
{
Std.rand2f(0.1,0.9) => n.gain;
Std.rand2f(20,40) * 1::ms => now;
0.0 => n.gain;
Std.rand2f(200,400) * 1::ms => now;
}
}

spork ~ chopper();

0.9 => e.target;

100::ms => e.duration;

1 => e.keyOn;

100::ms => now;

4000::ms => e.duration;

0.0 => e.target;

1 => e.keyOn;

4000::ms => now;

//2000::ms => now;

