/// @description Insert description here
// You can write your code in this editor
//credit to shaun or smth
if (!pause){
  pause = 1;
  instance_deactivate_all(true);
 audio_pause_all()
 
} else {
  pause = 0; 
  instance_activate_all();
audio_resume_all()
}



