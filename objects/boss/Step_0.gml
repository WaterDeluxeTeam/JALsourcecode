//boss properties

var attack;
var attack_cooldown;
var Speed
var Direction;

//boss initialization
boss.hp = 3;
attack = 20;
attack_cooldown = 30;
Speed = 1;
Direction = -1;

//boss behavior
if (distance_to_object(ojake) < 10)
{
    if (attack_cooldown <= 0)
    {
        ojake.hp = -1;
        attack_cooldown = 30;
    }
    else
    {
        attack_cooldown -= 1;
    }
}

//boss movement
if (!place_meeting(x + (Speed * Direction), y, Owall))
{
    x += Speed * Direction;
}
else
{
    Direction *= -1;
}


//boss death
if (boss.hp <= 0)
{
    instance_destroy();
}






// Check for collision with obj_bullet
if (place_meeting(x, y, oExposion))
{
    boss.hp -= 20;
    instance_destroy();
}