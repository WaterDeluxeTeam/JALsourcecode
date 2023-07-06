/// @description Insert description here
// You can write your code in this editor
var minutes = floor(global.timer / 60);
var seconds = floor(global.timer mod 60);

{ draw_text(525,40 + 15, string(minutes) + ":" + string(seconds));
}