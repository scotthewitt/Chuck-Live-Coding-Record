SawOsc s => Envelope e => dac;

int freq[130,140,120,130,120,130];

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
