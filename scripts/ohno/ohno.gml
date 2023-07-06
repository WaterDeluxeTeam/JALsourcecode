
function ohno(){

}
function save_room(){
var Key_num = instance_number(Key)

var room_struct =
{
    KeyNum : Key_num,
    KeyData: array_create(Key_num),
}


for(var i = 0; i< Key_num;i++)
    {
        var _inst = instance_find(Key,i)

        room_struct.KeyData[i] = {
        x: _inst.x,
        y: _inst.y,

        }
    }
if room == map_1 {global.levelData.level_1 = room_struct}
if room == map_2 {global.levelData.level_2 = room_struct}
if room == map_3 {global.levelData.level_3 = room_struct}
}


function load_room(){

    var room_struct = 0


    if room == map_1 {room_struct = global.levelData.level_1}
    if room == map_2 {room_struct = global.levelData.level_2}
    if room == map_3 {room_struct = global.levelData.level_3}

    if !is_struct(room_struct) {exit}
    if instance_exists(Key){instance_destroy(Key)}

    for(var i = 0; i<room_struct.KeyNum ; i++){
        instance_create_layer(room_struct.KeyData[i].x,room_struct.KeyData[i].y,layer,Key)}

}
















//overall saving
function save_game(_filenum = 0)
{
	var _savearray = array_create(0);
	//save the room
	save_room();
	
	//set and save stats like keys (sorry .ini you will be missed :C )
	global.levelData.save_y = ojake.y;
	global.levelData.save_rm = room_get_name(room);
	global.levelData.save_x = ojake.x
	global.levelData.keys = global.keys;
	
	array_push(_savearray, global.levelData);
	
	
	//actual saving time lets go
	var _filename = "jakedata" + string(_filenum) + ".dat"
	var _json = json_stringify(_savearray);
	var _buffer = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1 );
	buffer_write( _buffer, buffer_string, _json );
	
	buffer_save( _buffer, _filename );
	
	buffer_delete(_buffer);
}




function load_game(_filenum = 0)
{

//loading said data
var _filename = "jakedata" + string(_filenum) + ".dat"
if !file_exists(_filename) exit;

//load the buffer, get DAT, Delete buffer because my hardrive only has 4gb left oof

var _buffer = buffer_load(_filename);
var _json = buffer_read(_buffer, buffer_string);
buffer_delete(_buffer);
//Unstringify and get array
var _loadarray = json_parse(_json);

//set the data in our game to match loaded stuff
global.levelData = array_get(_loadarray,0);

global.keys = global.levelData.keys;

//use our new data to get where we need to be
   //go to correct room
var _loadroom = asset_get_index(global.levelData.save_rm);
room_goto(_loadroom)

//create the player
if instance_exists(ojake) {instance_destroy(ojake);};
instance_create_layer(global.levelData.save_x, global.levelData.save_y,layer,ojake);

//manually load the room
load_room()
}