SawOsc t => Envelope e => Gain g => dac;

Std.rand2f(0.8,1.3) * 3000 => t.freq;

100::ms => e.duration;

0.001 => g.gain;


while(1)
{
0.9 => e.target;

1 => e.keyOn;

100::ms => now;

0.0 => e.target;

0 => e.keyOff;

3000::ms => now;
}