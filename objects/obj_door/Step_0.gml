/// @description Insert description here
// You can write your code in this editor

var _deltapos = point_distance(xstart, ystart, x, y);
var _move_x = dcos(direction);
var _move_y = dsin(direction);

if (global.tags[tag]) { // move forward
	if (_deltapos < move_max) {
		// push a colliding object
		if (place_meeting(x+_move_x, y-_move_y, obj_moveable)) {
			var _colliding = instance_place(x+_move_x, y-_move_y, obj_moveable);
			with (_colliding) {
				move_and_collide(_move_x, -_move_y, obj_collidables, 4, 0, 0, abs(_move_x), abs(_move_y));
			}
		}
		move_and_collide(_move_x, -_move_y, obj_moveable, 4, 0, 0, abs(_move_x), abs(_move_y));
	}
} else { // move back
	if (_deltapos > 0) {
		// push a colliding object
		if (place_meeting(x-_move_x, y+_move_y, obj_moveable)) {
			var _colliding = instance_place(x-_move_x, y+_move_y, obj_moveable);
			with (_colliding) {
				move_and_collide(-_move_x, _move_y, obj_collidables, 4, 0, 0, abs(_move_x), abs(_move_y));
			}
		}
		move_and_collide(-_move_x, _move_y, obj_moveable, 4, 0, 0, abs(_move_x), abs(_move_y));
	}
}

// for safety
x = round(x);
y = round(y);
























































































































































































































































































































































































