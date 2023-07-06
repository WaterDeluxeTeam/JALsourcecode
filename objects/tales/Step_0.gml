var onTheGround = place_meeting(x, y + 1, obj_Wall);
if ojake.x + 100 <x{var xDirection = -1}
else if ojake.x - 100 > x{ xDirection = 1}else xDirection = 0
if (xDirection != 0) {facing = xDirection}
image_xscale = facing
xSpeed = xDirection * spd
ySpeed++;
if (place_meeting(x + xSpeed, y, obj_Wall)) { 

    while (!place_meeting(x + sign(xSpeed), y, obj_Wall)) {
        x += sign(xSpeed);
    }
    xSpeed = 0; 
		if (onTheGround)
        ySpeed = -15; 
}
x += xSpeed;
if (place_meeting(x, y + ySpeed, obj_Wall)) { 

    while (!place_meeting(x, y + sign(ySpeed), obj_Wall)) {
        y += sign(ySpeed);
    } 
    ySpeed = 0; 
}
y += ySpeed;