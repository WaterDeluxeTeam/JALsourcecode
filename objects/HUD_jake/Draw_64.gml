if (ojake.sprite_index == idle) {
    // Jett/Dev Note: This draws the HUD for the default idle sprite
    draw_sprite(NewHUD_idle, -1, 50, 60);
    image_speed = 0.01;
    image_xscale = 1;
    image_yscale = 1;
}
else if (ojake.sprite_index == dashtemp) {
    // Jett/Dev Note: This draws the HUD for the dash sprite
    draw_sprite(NewHUD_run, -1, 50, 60);
    image_speed = 0.25;
    image_xscale = 1;
    image_yscale = 1;
}
else if (ojake.sprite_index == dedjake) {
    // Jett/Dev Note: This draws the HUD for the jump sprite
    draw_sprite(NewHUD_hurt, -1, 50, 60);
    image_speed = 0.01;
    image_xscale = 1;
    image_yscale = 1;
}
else {
    draw_sprite(NewHUD_idle, -1, 50, 60);
    // Jett/Dev Note: This resets the HUD to the idle
    image_speed = 0.01;
    image_xscale = 1;
    image_yscale = 1;
}
