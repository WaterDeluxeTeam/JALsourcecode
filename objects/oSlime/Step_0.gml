ySpeed++;
if (place_meeting(x, y + ySpeed, Owall)) { 

    while (!place_meeting(x, y + sign(ySpeed), Owall)) {
        y += sign(ySpeed);
    } 

    ySpeed = 0; 
}

y += ySpeed;
x = x + Xway;
image_xscale = Facing;
