if (place_meeting(x, y + ySpeed + 115, oEnemy)) { 
instance_destroy(other)
ySpeed = -15
}else{ room_restart() }