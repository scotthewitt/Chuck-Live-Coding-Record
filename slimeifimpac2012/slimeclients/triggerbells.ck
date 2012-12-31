0 => Slime.s.monitor;

Slime.s.send("/slime/app/bells/0to1/gain",0.7);
200::ms => now;
Slime.s.send("/slime/app/bells/0to1/gain",0.3);
200::ms => now;

