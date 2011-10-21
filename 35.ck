TriOsc t => Envelope e => Delay d => dac;

20::ms => e.duration;

0.1 => d.gain;

function void mass()
{
//while(1)
for(0 => int k; k < 100; k++)
{
Std.rand2f(7600,9900) => t.freq;
1 => e.keyOn;
50::ms => now;
0 => e.keyOn;
50::ms => now;
}
}

while(1)
{

spork ~ mass();
spork ~ mass();
spork ~ mass();

500::ms => now;

0.0 => d.gain;

3000::ms => now;

0.1 => d.gain;

}
