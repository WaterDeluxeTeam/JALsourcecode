spd = 4;
mvtLocked = 0;
xSpeed = 1;
ySpeed = 1;
hp = 100;
life = 3;
alarm[1] = 15;
SpikeHit = 0
JakeTakesDamage = 0;
invincible = 0;
jumping=0;
keys = 0;
dashspd = 60;
dashdur = 0
global.showtime = 0
facing = 1;
HasDynamite = 0
layer_depth(layer,0)
global.laps = 0

if ojake.sprite_index == jakejump {
	
audio_play_sound(sound_jumpall,7,0)

}
load_room()

_gravity_normal =  1 ;
_gravity_swimming = 0;
_gravity = _gravity_normal;


are_we_in_water =  false;
x = Startpos.x
y = Startpos.y


//grapple hooks are cool!


	
	
	pause = 0
	
	
	//global var manager 
	global.yeahitsshowtimeperm = false
	
	
	
	
	
if room == map_1 {audio_play_sound(theme1,1,99)}
if room == map_2 {audio_play_sound(Theme2,1,99)}
if room == map_3 {audio_play_sound(theme1,1,99)}