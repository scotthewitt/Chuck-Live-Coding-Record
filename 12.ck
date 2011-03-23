int ii;

function void sy(float f, dur d)
{
TriOsc t => Envelope e => JCRev j => dac;
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

d * ii => now;
}
}
spork ~ sy(140, 15::ms);
spork ~ sy(120, 12::ms);
spork ~ sy(145, 10::ms);

spork ~ sy(1000, 40::ms);

while(1)
{
Std.rand2f(1,5) => ii;
10::ms => now;
}

1::day => now;
