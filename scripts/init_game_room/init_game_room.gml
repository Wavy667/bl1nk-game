// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_game_room() {
	if (!instance_exists(obj_blink)) { instance_create_depth(0, 0, 0, obj_blink) }
}