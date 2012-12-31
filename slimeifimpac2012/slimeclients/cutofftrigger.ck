0 => int ii;

while(1)
{
Std.rand2(0,127) => ii;

Slime.s.send("/slime/app/acid1/0to127/cutoff", ii);

250::ms => now;

}
