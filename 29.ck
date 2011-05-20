SawOsc s => Envelope e => Pan2 p  => dac;

0.3 => s.gain;

220 => s.freq;

100::ms => e.duration;
while(1)
{
1 => e.keyOn;

200::ms => now;

0 => e.keyOn;

200::ms => now;
}
