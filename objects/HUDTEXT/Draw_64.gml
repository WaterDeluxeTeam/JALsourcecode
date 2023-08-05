

if (global.showtime == 1) {
    draw_sprite(Showtime,-1,200, 50);
    global.showtime_timer += 1;
    if (global.showtime_timer >= 5 * room_speed) {
        global.showtime = 0;
        global.showtime_timer = 0;
		
    }
}
else if (global.laps > 0)  {
    // Increment the collision counter

draw_set_color(c_black)
draw_text(100, 300, "Jake Has done another death lap. Death Laps Done: " + string(global.laps));
}

else {
    draw_text(200, 300, " ");
}

