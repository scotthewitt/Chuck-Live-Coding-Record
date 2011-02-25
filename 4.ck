SawOsc t => JCRev j => dac;

120 => t.freq;

while(1)
{
for(0 => int i;i < 5; i++)
{
i * 0.05 => t.gain;

i * 10::ms => now;

0.0 => t.gain;

i * 50::ms => now;
}
}
