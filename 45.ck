Impulse i => JCRev j => Pan2 p => dac;

while(1)
{

for(40 => int k; k > 1; k++)
{
Std.rand2f(-1.,1.) => p.pan;
Std.rand2f(0.1,1.7) => i.next();
k * 1::ms => now;
}
6000::ms => now;

}
