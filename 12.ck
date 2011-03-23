function sy(float f)
{
TriOsc t => Envelope e => JCRev j => dac;

f => t.freq;

0.1 => t.gain;

100::ms => e.duration;

0.9 => e.target;

1 => e.keyOn;

100::ms => now;

0.0 => e.target;

1 => e.keyOff;

100::ms => now;
}

spork ~ sy(2000);

1::day => now;
