/// @description Insert description here
// You can write your code in this editor

if (room != rm_title) {
	if (input_check_pressed("pause")) {
		pause();
	}
}

// makes the fscreen setting always track the fullscreen state.
// NOTE: it may be better to only update the config map only during the
// fullscreen change than to do it every step
ds_map_replace(CONFIG, "fscreen", [window_get_fullscreen(), ["Disabled", "Enabled"]]);




















































































































































































































































































































































































