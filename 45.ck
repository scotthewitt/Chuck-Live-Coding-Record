Impulse i => JCRev j => Pan2 p => dac;

while(1)
{

for(1 => int k; k < 20; k++)
{
Std.rand2f(-1.,1.) => p.pan;
1.7 => i.next;
k * 1::ms => now;
}
6000::ms => now;

}
