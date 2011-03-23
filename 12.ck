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

d => now;
}
}
spork ~ sy(4000, 150);
spork ~ sy(2000, 120);
spork ~ sy(2200, 100);

1::day => now;
