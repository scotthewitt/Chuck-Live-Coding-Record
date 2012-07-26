SawOsc s => Envelope e => dac;

[130,140,120,130,120,130] @=> int hz[];

0 => int i; 

while(1)
{


hz[i] * 1.0 => s.freq;

0.3 => s.gain;

0.9 => e.target;
5000::ms => e.duration;
1 => e.keyOn;
5000::ms => now;
0.0 => e.target;
1 => e.keyOn;
5000::ms => now;

0.0 => s.gain;

i++;
if(i > hz.size)
{
 0 => i;
}

}

