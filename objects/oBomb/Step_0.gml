ySpeed++;
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
	xSpeed = 0;
}
y += ySpeed;



