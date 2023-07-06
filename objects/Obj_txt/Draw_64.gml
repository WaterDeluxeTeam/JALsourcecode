/// @description Insert description here
// You can write your code in this editor
#region hEALTH REGION
draw_text(10,125, "player Hp : "+string(ojake.hp));

 draw_text(10,150, "player keys : "+string(global.keys));
draw_set_color(c_red)
#endregion

#region life

draw_text(10,175, "player lives : "+string(ojake.life
));
 
#endregion

draw_text(10,200, "player fps : "+string(fps));

//OK now draw the timer as a text and then were done
var minutes = floor(global.timer / 60);
var seconds = floor(global.timer mod 60);


if global.showtime = 1 { draw_text(525,40 + 15, string(minutes) + ":" + string(seconds));
}
