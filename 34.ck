SinOsc s => JCRev j => Gain g => dac;
SinOsc ss => j;

adc => Gain gg => blackhole;

function void  l()
{
while(1)
{
gg.last() * 0.7 => g.gain;
10::ms => now;
}
}

spork ~ l();
while(1)
{
Std.rand2f(3000,5000) => s.freq;
Std.rand2f(2000,8000) => ss.freq;
50::ms => now;
//0.3 => g.gain;
}
20000::ms => now;
