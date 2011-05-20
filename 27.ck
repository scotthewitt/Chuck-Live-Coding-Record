Impulse i => JCRev j => Pan2 p => dac;

while(1)
{

Std.rand2f(-1.,1.) => p.pan;

2.0 => i.next;

Std.rand2f(0.9,3) * 1000::ms => now;

}
