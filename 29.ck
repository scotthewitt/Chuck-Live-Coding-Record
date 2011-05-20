SawOsc s => Envelope e => Pan2 p  => dac;

0.3 => s.gain;

220 => s.freq;

10::ms => e.duration;
while(1)
{
Std.rand2f(4000,6000) => s.freq;
Std.rand2f(-1.,1.) => p.pan;
-1. => p.pan;
1 => e.keyOn;

20::ms => now;

0 => e.keyOn;

20::ms => now;
}
