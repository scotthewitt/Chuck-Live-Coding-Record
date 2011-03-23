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

d * 2 => now;
}
}
spork ~ sy(100, 150::ms);
spork ~ sy(120, 120::ms);
spork ~ sy(105, 100::ms);

1::day => now;
