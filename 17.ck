TriOsc t => dac;
TriOsc tt => dac;

1000 => t.freq;
2000 => tt.freq;
50::ms => now;
