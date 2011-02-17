SawOsc s => JCRev j => dac;

while(1)
{
0.6 => s.gain;
110 => s.freq;
200::ms => now;
0.0 => s.gain;
3000::ms => now;
}
