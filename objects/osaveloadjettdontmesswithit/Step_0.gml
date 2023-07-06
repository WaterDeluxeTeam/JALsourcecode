/// @description Insert description here
// You can write your code in this editor
ini_open("OtherData.ews")
//save game
if keyboard_check_pressed(ord("1")) { save_game(0) ini_write_real("impdata","Lapdata",global.laps) };
if keyboard_check_pressed(ord("2")) { save_game(1)   ini_write_real("impdata","Lapdata",global.laps)  };
if keyboard_check_pressed(ord("3")) { save_game(2) ini_write_real("impdata","Lapdata",global.laps) };
//load game
if keyboard_check_pressed(ord("4")) { load_game(0) global.laps = ini_read_real("impdata", "Lapdata", 0) };
if keyboard_check_pressed(ord("5")) { load_game(1) global.laps = ini_read_real("impdata", "Lapdata", 0) };
if keyboard_check_pressed(ord("6")) { load_game(2) global.laps = ini_read_real("impdata", "Lapdata", 0) };
