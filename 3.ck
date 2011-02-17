SawOsc s => JCRev j => dac;

function void lfo()
{
SinOsc ss => blackhole;
0.1 => ss.freq;
while(1)
{
(ss.last() * 100) + 100 => s.freq;
1::ms => now;
}
}

spork ~ lfo();

0.1 => s.gain; 
500::ms => now;
0.0 => s.gain;
2000::ms => now;
