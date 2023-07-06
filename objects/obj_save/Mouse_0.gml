/// @description Insert description here
// You can write your code in this editor



ini_open("jakedata.ews");
ini_write_real("savegame", "score", global.keys);
ini_write_real("Savelevel", "Leveldata", global.levelData);
ini_write_real("level_1","stuff",global.levelData.level_1 or 0)
 ini_write_real("level_2","stuff",global.levelData.level_2 or 0)
ini_write_real("level_3","stuff",global.levelData.level_3 or 0)



show_message("Progress sucessfully loaded onto your .ews file!")
ini_close();