if (place_meeting(x, y, oSlime)) and sprite_index = dashtemp { 
     if sprite_index = dashtemp instance_destroy(other)
}
else {
if invincible = 1 JakeTakesDamage = 0
else JakeTakesDamage = 1      
if invincible = 1 SpikeHit = 0
else SpikeHit = 1   
}

alarm[2] = 15;

//tried making a enemy where you had to run over it to kill it but instead made a unkillable enemy
//...... Well ima pull a classic move where this isnt a bug its a feature. 
// Atleast until I fix it.(which would probably be never.)


