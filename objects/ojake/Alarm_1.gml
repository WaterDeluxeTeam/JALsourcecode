if SpikeHit = 1 hp-=10;
if SpikeHit = 1 ySpeed-=15;
if SpikeHit = 1 jumping = 1
if SpikeHit = 1 alarm[5] = 60
alarm[1] = 15;
SpikeHit=0
if sprite_index = dedjake {
	audio_play_sound(jakegetshurt,1,0)
	
}