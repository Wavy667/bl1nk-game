/// @description Insert description here
// You can write your code in this editor

#region blinking & resetting

if (input_check_pressed("blink") && obj_blink.tick = -1) {
	obj_blink.tick = 0;
}

if (obj_blink.blink == true) {
	x = xstart;
	y = ystart;
	xvel = 0;
	yvel = 0;
}

if (input_check_pressed("reset")) {
	room_restart();
}

#endregion

// movement forces
xdir = input_check("right") - input_check("left");
xvel = lerp(xvel, xdir*SPEED, 0.1+(0.1*(1-abs(xdir))));
yvel = yvel + GRAVITY;

// animation
if (xdir != 0) { 
	image_xscale = xdir;
	sprite_index = spr_player_walk;
} else {
	sprite_index = spr_player_idle;
}

// movement
move_and_collide(xvel, 0, obj_collidables);
move_and_collide(0, yvel, obj_collidables);

// push a box
if (place_meeting(x+xvel,y,obj_box)) {
	var _colliding = instance_place(x+xvel,y,obj_box);
	xvel = xvel/1.2;
	with (_colliding) {
		// check if we collide with another box
		if (place_meeting(x+obj_player.xvel, y, obj_moveable)) {
			var _colliding2 = instance_place(x+obj_player.xvel, y, obj_moveable);
			with (_colliding2) {
				move_and_collide(obj_player.xvel, 0, obj_collidables, 4, 0, 0, abs(obj_player.xvel));
			}
		}
		move_and_collide(obj_player.xvel, 0, obj_collidables);
	}
}

// collisons
if (place_meeting(xprevious+xvel,y,obj_collidables)) {
	xvel = 0;
}

if (place_meeting(x,yprevious+yvel,obj_collidables)) {
	yvel = 0;
	if (input_check_pressed("jump")) {
		yvel -= JUMP_HEIGHT;
	}
} else {
	// switch to jump/fall sprites
	if (yvel < 0) {
		sprite_index = spr_player_jump;
	} else {
		sprite_index = spr_player_fall;
	}
}




















































































































































































































































































































































































