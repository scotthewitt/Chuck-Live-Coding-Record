TriOsc t => Envelope e => Delay d => dac;

20::ms => e.duration;

function void mass()
{
while(1)
{
Std.rand2f(600,900) => t.freq;
1 => e.keyOn;
50::ms => now;
0 => e.keyOn;
50::ms => now;
}
}

spork ~ mass();
spork ~ mass();
spork ~ Mass();

1::day => now;
