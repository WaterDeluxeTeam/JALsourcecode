/// @description Insert description here
// You can write your code in this editor
global.timer -= 1 / room_speed;
if global.timer = 0
{
	audio_stop_all()
	room_goto(rm_gameover)
}

global.timerup +=1 /room_speed