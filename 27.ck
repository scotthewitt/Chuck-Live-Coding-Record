Impulse i => JCRev j => Pan2 p => dac;

while(1)
{

Std.rand2f(-1.,1.) => p.pan;

.6 => i.next;

Std.rand2f(0.9,3) * 100::ms => now;

}
