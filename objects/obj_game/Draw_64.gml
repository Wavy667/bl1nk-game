/// @description Insert description here
// You can write your code in this editor

if (paused) {
	if (!surface_exists(surf_paused)) {
		if (surf_paused == -1) {
			surf_paused = surface_create(room_width, room_height);
			surface_set_target(surf_paused);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
		}
	}
 
	instance_deactivate_all(true);
	instance_activate_object(input_controller_object);
	instance_activate_object(obj_menu);
	
	// draw screen
	if (surface_exists(surf_paused)) {
		draw_surface(surf_paused, 0, 0);
	}
	draw_set_alpha(0.5);
	draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}
























































































































































































































































































































































































