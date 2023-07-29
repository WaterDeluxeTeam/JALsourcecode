/// @description Insert description here
// You can write your code in this editor
var minutes = floor(global.timer / 60);
var seconds = floor(global.timer mod 60);

draw_set_color(c_aqua)



{ draw_text(525,40 + 15, string(minutes) + ":" + string(seconds));
}
	

	if global.timer < 61 {draw_set_color(c_red) 
audio_stop_all()
audio_play_sound(Yourrunningpastyourtime,1,1)

if global.yeahitsshowtimeperm = true{
draw_text(325,40 + 15,string(minutes) + ":" + string(seconds))
}
	}
