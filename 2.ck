SawOsc s => JCRev j => dac;

while(1)
{
0.3 => s.gain;
110 => s.freq;
100::ms => now;
0.0 => s.gain;
450::ms => now;
}
