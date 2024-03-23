/// @description Insert description here
// You can write your code in this editor

#macro MAIN = 0
#macro OPTIONS = 1

#region // menu items
// main menu
if (room == rm_title) {
	menu[0][0] = "Start";
	menu[0][1] = "Options";
	menu[0][2] = "Quit Game";
} else {
	menu[0][0] = "Resume";
	menu[0][1] = "Options";
	menu[0][2] = "Quit to Title";
	menu[0][3] = "Quit Game";
}

// options
menu[1][0] = ["Fullscreen: ", "fscreen"];
menu[1][1] = ["SFX: ", "sfx_vol"];
menu[1][2] = ["BGM: ", "bgm_vol"];
menu[1][3] = "Back";

#endregion

index = 0;
sub_menu = 0;

// font
font_add_enable_aa(false);
font_title = font_add("blocks-extended.ttf", 8, false, false, 32, 128);

function change_setting(_move, _key) {
	var _map_arr = CONFIG[? _key];
	var _limits_arr = _map_arr[1];
	
	if (is_real(_limits_arr[0])) {
		var _min = _limits_arr[0];
		var _max = _limits_arr[1];
	} else {
		var _min = 0;
		var _max = array_length(_limits_arr)-1;
	}
	
	_map_arr[@ 0] = clamp(_move + _map_arr[0], _min, _max);
	
	// special case for fullscreen
	if (_key == "fscreen") {
		window_set_fullscreen(_map_arr[0])
	}
}






















