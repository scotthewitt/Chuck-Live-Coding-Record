SawOsc s => dac;

140 => float f;

while(f < 1000)
{
    <<< f >>>;
    1000::ms => now;
    f + 1 => f;
    f => s.freq;
}
