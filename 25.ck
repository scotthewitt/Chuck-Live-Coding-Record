SawOsc t => Envelope e => Delay d => Pan2 p => dac;

0.5 => t.gain;

e => p;

50::ms => e.duration;

300::ms => d.max;

200::ms => d.delay;

while(1)
{
Std.rand2f(2180,4100) => t.freq;
1 => e.keyOn;
80::ms => now;;
0 => e.keyOn;
80::ms => now; 
Std.rand2f(-1.,1.) => p.pan;
400::ms => now;
}
