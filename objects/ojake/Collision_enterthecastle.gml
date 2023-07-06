/// @description Insert description here
// you can go fuck yourself in this editor



if keyboard_check_pressed(vk_up) { //press up to die :DDDDDDDDDDDDDDDDD
	
	audio_stop_all()
	room_goto(rm_boss1)
	ojake.hp = 100
	audio_play_sound(timesrunningout_old,1,88)
	
	}

