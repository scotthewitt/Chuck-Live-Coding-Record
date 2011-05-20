SawOsc s => Envelope e => Pan2 p  => dac;

0.3 => s.gain;

220 => s.freq;

10::ms => e.duration;
while(1)
{
Std.rand2f(2000,3000) => s.freq;
1 => e.keyOn;

20::ms => now;

0 => e.keyOn;

20::ms => now;
}
