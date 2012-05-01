TriOsc s => Gain g => JCRev j => Pan2 p => dac;

0.9 => g.gain;

while(1)
{

for(1 => int k; k < 10; k++)
{
Std.rand2f(-1.,1.) => p.pan;
Std.rand2f(.1,.7) => s.gain;
k * 1::ms => now;
0.0 => s.gain;
}
2000::ms => now;

Std.rand2f(200,300) => s.freq;

}
