
//The Jake Step code. since april 2022

var xDirection = keyboard_check(vk_right) - keyboard_check(vk_left);
var jump = keyboard_check_pressed(ord("Z"));
var dash = keyboard_check_pressed(ord("+")); //ez remove tottally not lazy lol
var onTheGround = place_meeting(x, y + 1, Owall);
var onAWall = place_meeting(x - 5, y, Owall) - place_meeting(x + 5, y, Owall);

if (xDirection != 0) {
    image_xscale = xDirection;
    facing = xDirection;
}

xSpeed = xDirection * spd;
mvtLocked = max(mvtLocked - 1, 0);
dashdur = max(dashdur - 1, 0);

if (dashdur > 0) {
    ySpeed = 0;
} else if (onAWall != 0) {
    ySpeed = min(ySpeed + 1, 5);
} else {
    ySpeed++;
}

if (dash) {
    dashdur = 50;
    xSpeed = image_xscale * dashspd;
}

if (mvtLocked <= 0 && dashdur <= 0) {
    if (xDirection != 0) {
        image_xscale = xDirection;
        xSpeed = xDirection * spd;
    }

    if (jump) {
        if (onAWall != 0) {
            ySpeed = -15;
            xSpeed = onAWall * spd;
            mvtLocked = 10;
        } else if (onTheGround) {
            ySpeed = -15;
        }
    }
}

if (keyboard_check(ord("X")) && xDirection != 0) {
    xSpeed = xDirection * spd * 2;
    sprite_index = dashtemp;
} else {
    if (onAWall != 0) {
        image_xscale = onAWall;
        sprite_index = slidejake;
    } else if (dashdur > 0) {
        sprite_index = a_placeholder;
    } else if (onTheGround) {
        if (xDirection != 0) {
            if (HasDynamite < 1) {
                sprite_index = jakerwalking;
            } else {
                sprite_index = jakerwalkingtnt;
            }
        } else {
            if (HasDynamite < 1) {
                sprite_index = idle;
            } else {
                sprite_index = idletnt;
            }
        }
    } else {
        if (SpikeHit == 0) {
            if (HasDynamite < 1) {
                sprite_index = jakejump;
            } else {
                sprite_index = jakejumptnt;
            }
        }
    }
}

if (place_meeting(x + xSpeed, y, Owall)) {
    while (!place_meeting(x + sign(xSpeed), y, Owall)) {
        x += sign(xSpeed);
    }
    xSpeed = 0;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, Owall)) {
    while (!place_meeting(x, y + sign(ySpeed), Owall)) {
        y += sign(ySpeed);
    }
    ySpeed = 0;
}

y += ySpeed;

if (hp == 0) {
    life--;
    x = Startpos.x;
    y = Startpos.y;
    hp = 100;
}

if (JakeTakesDamage == 1) {
    sprite_index = dedjake;
}

if (invincible == 0) {
    audio_stop_sound(invincibility);
}

if (jump) {
    jumping = 1;
    alarm[5] = 15;
}

if (life < 1) {
    room_goto(rm_gameover);
    audio_stop_all();
    audio_play_sound(GameoverSound, 1, 0);
}

// Water / Cloud Trampoline

// this code is broken, dont fix.
// God i hate the day I'll have to fix this. -eli 7/3/2023

if (place_meeting(x, y, Obj_water)) {
    _gravity = _gravity_swimming;
    ySpeed = lerp(ySpeed, 0, 0.1);
  
   

    if (!are_we_in_water) {
        ySpeed = ySpeed * -1.5;
      
    }

    are_we_in_water = true;
    onTheGround = 1;

    if (random_range(0, 100) <= 1) {
        // Perform any additional actions in water here
    }
} else {
    _gravity = _gravity_normal;
    are_we_in_water = false;

    if (ySpeed < 0) {
        // Perform any actions when moving upwards here
    } else if (ySpeed > 0) {
        // Perform any actions when moving downwards here
    }
}


//this handles music
//if room == map_1 {audio_play_sound(theme1,1,99)}
//if room == map_2 {audio_play_sound(Theme2,1,99)}
//if room == map_3 {audio_play_sound(theme1,1,99)}


