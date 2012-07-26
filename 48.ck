SawOsc t => Envelope e => Gain g => dac;

Std.rand2f(0.8,1.3) * 3000 => t.freq;

100::ms => e.duration;

0.05 => g.gain;

float tune[10];


for(0 => int i; i < 9; i++)
{
Std.rand2f(300,900) => tune[i];
}

1 => Slime.s.monitor;

while(1)
{
for(0 => int i; i < 9; i++)
{
tune[i] => t.freq;
Std.rand2f(0.0,1.0) => float amp;
amp => t.gain;
Slime.s.send("/freq",tune[i]);
Slime.s.send("/vol", amp);

0.9 => e.target;

1 => e.keyOn;

100::ms => now;

0.0 => e.target;

0 => e.keyOff;

300::ms => now;
}

}