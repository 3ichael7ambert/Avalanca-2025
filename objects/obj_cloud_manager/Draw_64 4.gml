
if (!show_gui) exit;

draw_set_color(c_black);
draw_set_halign(fa_left);

var txt_x = 50;
var txt_y = 50;
var space_y = string_height("Q");
draw_text(txt_x, txt_y, "Current shader #" + string(current_shader + 1) + ": " + shader_display_name + " (Press 1 - 5 to select shader)"); txt_y += space_y;
if (current_shader_is_pixelated) draw_text(txt_x, txt_y, "Pixelation amount: "+string(var_pixel_amount) + " (Press UP and DOWN to alter amount)"); txt_y += space_y;
draw_text(txt_x, txt_y, "Press 'G' to toggle GUI"); txt_y += space_y;
draw_text(txt_x, txt_y, "Press 'R' to record a GIF"); txt_y += space_y;
draw_text(txt_x, txt_y, "Press 'S' to take a screenshot"); txt_y += space_y;