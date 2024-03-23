/// @description Insert description here
// You can write your code in this editor

var _move = (input_check_pressed("down") || input_check_repeat("down")) - (input_check_pressed("up") || input_check_repeat("up"));
var _hmove = (input_check_pressed("right") || input_check_repeat("right")) - (input_check_pressed("left") || input_check_repeat("left"));
var _select = input_check_pressed("accept");
var _size = array_length(menu[sub_menu]) - 1;
var _ingame = (room != rm_title);

index += _move;

// wrap menu
if (index > _size) { index = 0; }
if (index < 0) { index = _size; }

if (_select || (sub_menu == 1 && abs(_hmove))) {
	switch (sub_menu) {
		case 0:
			switch (index) {
				case 0: // start/resume
					if (_ingame) {
						obj_game.pause();
					} else {
						room_goto_next();
					}
					break;
				case 1: // options
					sub_menu = 1;
					index = 0;
					break;
				case 2: // quit/quit to menu
					if (_ingame) {
						room_goto(rm_title);
					} else {
						game_end();
					}
					break;
				case 3: // quit (title)
					game_end();
					break;
				default:
					break;
			}
		break;
		case 1:
			switch (index) {
				case 0:
					change_setting(_hmove, "fscreen");
					break;
				case 1:
					change_setting(_hmove, "sfx_vol");
					break;
				case 2:
					change_setting(_hmove, "bgm_vol");
					break;
				case 3:
					sub_menu = 0;
					index = 1;
					break;
				default:
					break;
			}
	}
}

//if (index == 0 && global.key_shot[0]) { room_goto(rm_maingame); }
//if (index == 7 && global.key_shot[0]) { game_end(); }
