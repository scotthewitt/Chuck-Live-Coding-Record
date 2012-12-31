float f;

//while(1)
//{
Std.rand2f(0.0, 1.0) => f;
Slime.s.send("/slime/app/blip/freq/0-1", f);
Slime.s.send("/slime/app/blip/lengthms/0-x", 100.0);
500::ms => now;
Slime.s.send("/slime/app/blip/freq/0-1", 0.7);
Slime.s.send("/slime/app/blip/lengthms/0-x", 500.0);

Std.rand2f(0.0, 1.0) => f;


Slime.s.send("/slime/app/blip/freq/0-1", f);
Slime.s.send("/slime/app/blip/lengthms/0-x", 100.0);
500::ms => now;
Slime.s.send("/slime/app/blip/freq/0-1", 0.7);
Slime.s.send("/slime/app/blip/lengthms/0-x", 500.0);


//50::ms => now;
//}
