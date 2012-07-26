SawOsc s => Envelope e => dac;

[130,140,120,130,120,130] => int freq;

while(1)
{

freq[0] * 1.0 => s.freq;

0.3 => s.gain;

0.9 => e.target;
5000::ms => e.duration;
1 => e.keyOn;
5000::ms => now;
0.0 => e.target;
1 => e.keyOn;
5000::ms => now;

0.0 => s.gain;
}
