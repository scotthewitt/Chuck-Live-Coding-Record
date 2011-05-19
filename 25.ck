SawOsc t => Envelope e => Delay d => Pan2 p => dac;

e => Delay dd => p;

dd => Delay ddd => p;

0.1 => t.gain;

e => p;

50::ms => e.duration;

300::ms => d.max => dd.max => ddd.max;

200::ms => d.delay => dd.delay => ddd.delay;;

while(1)
{
Std.rand2f(2180,4100) => t.freq;
1 => e.keyOn;
80::ms => now;;
0 => e.keyOn;
80::ms => now; 
Std.rand2f(-1.,1.) => p.pan;
900::ms => now;
}
