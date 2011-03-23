int ii;

function void sy(float f, dur d, float mod)
{
SqrOsc t => Envelope e => JCRev j => dac;
while(1)
{
f => t.freq;

0.3 => t.gain;

d => e.duration;

0.9 => e.target;

1 => e.keyOn;

d => now;

0.0 => e.target;

1 => e.keyOff;

d * ii * mod => now;
}
}
spork ~ sy(140, 150::ms, 0.3);
spork ~ sy(120, 120::ms, 0.9);
spork ~ sy(145, 100::ms, 1.2);

spork ~ sy(1000, 40::ms, 1.8);

while(1)
{
Std.rand2(1,20) => ii;
10::ms => now;
}

1::day => now;
