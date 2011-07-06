SinOsc s => JCRev j => Gain g => dac;
SinOsc ss => j;

adc => Gain gg => blackhole;

function l()
{
while(1)
{
gg.last() => g.gain;
10::ms => now;
}
}

spork ~ l();

2800 => s.freq;
4600 => ss.freq;

0.3 => g.gain;

2000::ms => now;
