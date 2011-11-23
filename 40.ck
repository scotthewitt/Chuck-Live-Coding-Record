SawOsc t => JCRev j => dac;

200 => t.freq;

1 => int kk;

while(1)
{
for(0 => int i;i < 2; i++)
{
0.0 => t.gain;
100::ms => now;
0.1 => t.gain;
100::ms => now;
}
0.0 => t.gain;
if(kk%2)
{
160 => t.freq;
}else {
220 => t.freq;
}
2 * 160::ms => now;
kk++;
}
