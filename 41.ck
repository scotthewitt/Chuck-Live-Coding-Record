SawOsc s => JCRev j => dac;

0.01 => s.gain;



while(1)
{
Std.rand2f(500,800) => s.freq;
100::ms => now;
}
