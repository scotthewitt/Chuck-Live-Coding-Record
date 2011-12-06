Noise n => Envelope e => dac;

function void chopper()
{
while(1)
{
0.9 => n.gain;
50::ms => now;
0.0 => n.gain;
50::ms => now;
}
}

spork ~ chopper();

4000::ms => e.duration;

0.01 => e.target;

1 => e.keyOn;

2000::ms => now;

2000::ms => now;

0.0 => e.target;

0 => e.keyOn;

300::ms => now;

