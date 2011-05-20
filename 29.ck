SawOsc s => Envelope e => Pan2 p  => dac;

0.5 => s.gain;

120 => s.freq;

200::ms => e.duration;
while(1)
{
1 => e.keyOn;

300::ms => now;

0 => e.keyOn;

300::ms => now;
}
