/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_alpha(.5);
draw_rectangle(0,0,300,300,false);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(15,15, "Level " + string(level));
draw_text(15,35, "Vehicle " + string(vehicle));
draw_text(15,55, "Sun X " + string(sunPosition_x));
draw_text(15,75, "Sun Y " + string(sun_Position_y));










