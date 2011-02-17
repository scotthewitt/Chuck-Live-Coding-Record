SawOsc s => JCRev j => dac;

//while(1)
//{
0.1 => s.gain;
510 => s.freq;
1000::ms => now;
0.0 => s.gain;
300::ms => now;
//}
