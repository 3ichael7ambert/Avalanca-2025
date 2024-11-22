/// @description Swap current shader

// Check for number being pressed and set corresponding shader
var i = 0;
repeat(eCloudShader.num) {
	if (keyboard_check_pressed(ord(string(i + 1)))) {
		current_shader = i;
	}
	i++;
}

// Control pixelation amount
if (current_shader_is_pixelated) {
	var pixel_change_amnt = 10;
	if (keyboard_check(vk_up)) {
		var_pixel_amount += pixel_change_amnt;
	}
	if (keyboard_check(vk_down)) {
		var_pixel_amount -= pixel_change_amnt;
	}
	var_pixel_amount = clamp(var_pixel_amount, pixel_change_amnt, 1000);
}

// Toggle GUI
if (keyboard_check_pressed(ord("G"))) {
	show_gui ^= 1;
}

// Take screenshot
var is_valid_os = os_type == os_macosx or os_type == os_linux or os_type == os_windows;
if (is_valid_os and keyboard_check_pressed(ord("S"))) {
	var dir_name = "screens";
	if (!directory_exists(game_save_id + dir_name)) {
		directory_create(game_save_id + dir_name);
	}
	var ss_file_name = game_save_id + dir_name + "/screen_" + string(irandom(9999)) + ".png"
	screen_save(ss_file_name);
	show_message("Screenshot saved with file name: " + ss_file_name);
}

// Record gif
if (is_valid_os and keyboard_check_pressed(ord("R"))) {
	gif_recording ^= 1; // Toggle gif recording boolean
	if (gif_recording) { // just started recording gif
		gif = gif_open(room_width, room_height);
		gif_number = irandom(999); // Generate random id for this gif
	} else { // save gif
		var dir_name = "gifs";
		if (!directory_exists(game_save_id + dir_name)) {
			directory_create(game_save_id + dir_name);
		}
		var gif_filename = game_save_id + dir_name + "/gif_" + string(gif_number) + ".gif";
		gif_save(gif, gif_filename);
		show_message("Gif created with file name:" + gif_filename);
		gif_recording = true;
	}
}
// Record gif
if (gif_recording) {
	gif_add_surface(gif, application_surface, 40, 0, 0, 1); // Add frame to gif
}