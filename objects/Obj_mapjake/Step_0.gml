//Eli has a skill issue in coding so I fixed his code cause I'm build different.

xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if xDirection != 0 xFacing = xDirection

yDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if keyboard_check(ord("S")) Recent_Choice = 1

if keyboard_check(ord("W")) Recent_Choice = 2

if keyboard_check(ord("D")) || keyboard_check(ord("A")) Recent_Choice = 3

xspd = xDirection * move_spd;

yspd = yDirection * move_spd;

x += xspd;

y += yspd;

image_xscale = xFacing

if xDirection != 0 || yDirection != 0

{

if Recent_Choice = 1 sprite_index = jakerwalkingFoward

if Recent_Choice = 2 sprite_index = jakerwalkingBackward

if Recent_Choice = 3 sprite_index = jakerwalking

} else

{

if Recent_Choice = 1 sprite_index = idle_foward

if Recent_Choice = 2 sprite_index = idle_backward

if Recent_Choice = 3 sprite_index = idle

}