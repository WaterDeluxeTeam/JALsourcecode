Obj_exit.x = Startpos.x - 3
Obj_exit.y = Startpos.y + 30
Lap3_block.x = Startpos.x + 75
Lap3_block.y = Startpos.y
global.showtime = 1
global.timer = global.timerup * 5.75
draw_set_color(c_fuchsia)
audio_stop_all()
audio_play_sound(timesrunningout_old,1,1)
	
	GhostBlock.y = y + 5000000000000000000000000000000000000000000000000000000000000000000000000000000
	// Set the timer to 5 seconds
var spriteTimer = 5 * room_speed;

// Calculate the position of the sprite in the middle of the screen
var spriteX = HUDTEXT.x 
var spriteY = HUDTEXT.y 

// Update the timer and draw the sprite if the timer is active
if (spriteTimer > 0) {
    spriteTimer--;

    // Draw the sprite at the calculated position
    draw_sprite(Showtime, 0, spriteX, spriteY);
}
