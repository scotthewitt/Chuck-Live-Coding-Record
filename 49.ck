SawOsc s => Envelope e => dac;

[130,140,120,130,120,130] @=> int hz[];

function void lfo()
{

SinOsc l => blackhole;
2.0 => l.freq;

while(1)
{
l.last() * 20 + hz[0] => s.freq;
10::ms => now;
}

}

spork ~ lfo();

0 => int i; 

hz.size() => int j;

while(1)
{
hz[i] * 1.0 => s.freq;

0.2 => s.gain;

0.9 => e.target;
5000::ms => e.duration;
1 => e.keyOn;
5000::ms => now;
0.0 => e.target;
1 => e.keyOn;
5000::ms => now;

0.0 => s.gain;

i++;


if(i = j)
{
 0 => i;
}

}

