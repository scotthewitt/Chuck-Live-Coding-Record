SawOsc s => dac;

while(1)
{
Std.rand2f(180,300) => s.freq;
100::ms => now;
}
