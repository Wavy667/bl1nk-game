/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_title);
draw_set_halign(fa_left);
draw_set_colour(c_white);

switch (sub_menu) {
    case 0:
		draw_text(448, 32, "BL1NK\n(demo)\n(yeah)");
		// draw menu item
		for (var i = 0; i < array_length(menu[0]); ++i) {
			draw_text_color(33, 65+i*24, menu[0][i], c_black, c_black, c_black, c_black, 0.5); 
			draw_set_colour(c_white);
			if (i == index) draw_set_colour(c_red);
			draw_text(32, 64+i*24, menu[0][i]); 
		}
        break;
	case 1:
		// draw config elements
		for (var i = 0; i < array_length(menu[1]); ++i) {
			if (is_array(menu[sub_menu][i])) {
				var _menu_arr = menu[sub_menu][i];
			
				var _map_arr = CONFIG[? _menu_arr[1]];
			
				var _limits_arr = _map_arr[1];
			
				if (is_real(_limits_arr[0])){
					var _str = _menu_arr[0] + string(_map_arr[0]);
				} else {
					var _str = _menu_arr[0] + _limits_arr[_map_arr[0]];
				}
			} else {
				var _str = menu[sub_menu][i];
			}
			draw_text_color(33, 65+i*24, _str, c_black, c_black, c_black, c_black, 0.5);
			draw_set_colour(c_white);
			if (i == index) draw_set_colour(c_red);
			draw_text(32, 64+i*24, _str); 
		}
        break;
    default:
        // code here
        break;
}













































































































































































































































