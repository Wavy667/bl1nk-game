window_set_size((floor(display_get_width() / 640)-1)*640, (floor(display_get_height() / 360)-1)*360);
window_center();

if (!instance_exists(obj_game)) { instance_create_depth(0, 0, 0, obj_game) }