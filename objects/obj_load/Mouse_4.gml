/// @description Insert description here
// You can write your code in this editor


show_debug_message(global.levelData)
ini_open("jakedata.ews");

global.keys = ini_read_real("savegame", "score", 0);
global.levelData.level_1 = ini_write_real("level_1","stuff",global.levelData.level_1 and 0)
global.levelData.level_2 = ini_write_real("level_2","stuff",global.levelData.level_2 and 0)
global.levelData.level_3 =ini_write_real("level_3","stuff",global.levelData.level_3 and 0)
show_debug_message("If Level 1 exists within data as a struct");
show_debug_message(variable_struct_exists(global.levelData, "level_1"));
show_message("Save sucessfully Loaded wowzers")
ini_close();
