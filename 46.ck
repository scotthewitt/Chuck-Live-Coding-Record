TriOsc s => Gain g => JCRev j => Pan2 p => dac;

0.9 => g.gain;

while(1)
{

for(1 => int k; k < 20; k++)
{
Std.rand2f(-1.,1.) => p.pan;
Std.rand2f(.0,.7) => s.gain;
k * 10::ms => now;
0.0 => s.gain;
}
4000::ms => now;

Std.rand2f(1100,3300) => s.freq;

}
